# Google Tag Manager Setup Guide
## Bayliner 175 Google Ads Conversion Tracking

This guide explains how to configure Google Tag Manager for **Google Ads conversion tracking** on your boat listing page. The primary goal is to track conversions for Google Ads campaigns, with optional GA4 analytics as a secondary benefit.

---

## 1. CREATE TRIGGERS

Navigate to **Triggers** → **New** for each of these:

### 📊 Scroll Depth Trigger
- **Trigger Name**: `Scroll Depth - Custom`
- **Trigger Type**: Custom Event
- **Event Name**: `scroll_depth`
- **This trigger fires on**: All Custom Events

### 👀 Contact Section View Trigger
- **Trigger Name**: `Contact Section View`
- **Trigger Type**: Custom Event
- **Event Name**: `contact_section_view`
- **This trigger fires on**: All Custom Events

### 📞 Contact Button Click Trigger
- **Trigger Name**: `Contact Button Click`
- **Trigger Type**: Custom Event
- **Event Name**: `contact_button_click`
- **This trigger fires on**: All Custom Events

### 📋 Phone Copy Trigger
- **Trigger Name**: `Phone Number Copied`
- **Trigger Type**: Custom Event
- **Event Name**: `phone_copy`
- **This trigger fires on**: All Custom Events

### 🎯 High Intent Action Trigger
- **Trigger Name**: `High Intent Action`
- **Trigger Type**: Custom Event
- **Event Name**: `high_intent_action`
- **This trigger fires on**: All Custom Events

### ✅ Made Contact Trigger (CONVERSION)
- **Trigger Name**: `Made Contact - Conversion`
- **Trigger Type**: Custom Event
- **Event Name**: `made_contact`
- **This trigger fires on**: All Custom Events

### 🖼️ Gallery Interaction Trigger
- **Trigger Name**: `Gallery Interaction`
- **Trigger Type**: Custom Event
- **Event Name**: `gallery_interaction`
- **This trigger fires on**: All Custom Events

### 🧭 Navigation Click Trigger
- **Trigger Name**: `Navigation Click`
- **Trigger Type**: Custom Event
- **Event Name**: `navigation_click`
- **This trigger fires on**: All Custom Events

---

## 2. CREATE VARIABLES

Navigate to **Variables** → **User-Defined Variables** → **New** for each:

### Event Parameter Variables
- **Variable Name**: `DLV - Scroll Depth`
  - **Variable Type**: Data Layer Variable
  - **Data Layer Variable Name**: `scroll_depth`

- **Variable Name**: `DLV - Button Type`
  - **Variable Type**: Data Layer Variable
  - **Data Layer Variable Name**: `button_type`

- **Variable Name**: `DLV - Event Category`
  - **Variable Type**: Data Layer Variable
  - **Data Layer Variable Name**: `event_category`

- **Variable Name**: `DLV - Event Label`
  - **Variable Type**: Data Layer Variable
  - **Data Layer Variable Name**: `event_label`

- **Variable Name**: `DLV - Contact Method`
  - **Variable Type**: Data Layer Variable
  - **Data Layer Variable Name**: `contact_method`

- **Variable Name**: `DLV - Action Type`
  - **Variable Type**: Data Layer Variable
  - **Data Layer Variable Name**: `action_type`

- **Variable Name**: `DLV - Image Index`
  - **Variable Type**: Data Layer Variable
  - **Data Layer Variable Name**: `image_index`

- **Variable Name**: `DLV - Image Name`
  - **Variable Type**: Data Layer Variable
  - **Data Layer Variable Name**: `image_name`

---

## 3. CREATE CONVERSION TAGS

**Priority: Google Ads Conversion Tracking**

Navigate to **Tags** → **New** for each:

### 🎯 PRIMARY: Google Ads Conversion Tags

#### ✅ Made Contact Conversion (MOST IMPORTANT)
- **Tag Name**: `Google Ads - Made Contact Conversion`
- **Tag Type**: Google Ads Conversion Tracking
- **Conversion ID**: [Your Google Ads Conversion ID]
- **Conversion Label**: [Your Google Ads Conversion Label]
- **Conversion Value**: 100
- **Currency Code**: AUD
- **Triggering**: `Made Contact - Conversion`

#### 📞 High Intent Actions Conversion
- **Tag Name**: `Google Ads - High Intent Conversion`
- **Tag Type**: Google Ads Conversion Tracking
- **Conversion ID**: [Your Google Ads Conversion ID]
- **Conversion Label**: [Your High Intent Conversion Label]
- **Conversion Value**: 50
- **Currency Code**: AUD
- **Triggering**: `High Intent Action`

---

### 📊 OPTIONAL: GA4 Event Tags (for analytics)

If you also want GA4 analytics data, create these tags:

### 📊 Scroll Depth Tag
- **Tag Name**: `GA4 - Scroll Depth`
- **Tag Type**: Google Analytics: GA4 Event
- **Configuration Tag**: [Your GA4 Config Tag]
- **Event Name**: `scroll_depth`
- **Event Parameters**:
  - `scroll_depth`: `{{DLV - Scroll Depth}}`
  - `event_category`: `{{DLV - Event Category}}`
  - `event_label`: `{{DLV - Event Label}}`
- **Triggering**: `Scroll Depth - Custom`

### 📞 Contact Actions Tag
- **Tag Name**: `GA4 - Contact Actions`
- **Tag Type**: Google Analytics: GA4 Event
- **Configuration Tag**: [Your GA4 Config Tag]
- **Event Name**: `{{Event}}`
- **Event Parameters**:
  - `button_type`: `{{DLV - Button Type}}`
  - `contact_method`: `{{DLV - Contact Method}}`
  - `action_type`: `{{DLV - Action Type}}`
  - `event_category`: `{{DLV - Event Category}}`
  - `event_label`: `{{DLV - Event Label}}`
- **Triggering**: 
  - `Contact Button Click`
  - `Phone Number Copied`
  - `High Intent Action`

### ✅ Conversion Tag (MOST IMPORTANT)
- **Tag Name**: `GA4 - Made Contact Conversion`
- **Tag Type**: Google Analytics: GA4 Event
- **Configuration Tag**: [Your GA4 Config Tag]
- **Event Name**: `made_contact`
- **Event Parameters**:
  - `contact_method`: `{{DLV - Contact Method}}`
  - `event_category`: `{{DLV - Event Category}}`
  - `event_label`: `{{DLV - Event Label}}`
  - `value`: `100` (assign a value to your conversion)
  - `currency`: `AUD`
- **Triggering**: `Made Contact - Conversion`

### 👀 Engagement Tag
- **Tag Name**: `GA4 - Engagement Events`
- **Tag Type**: Google Analytics: GA4 Event
- **Configuration Tag**: [Your GA4 Config Tag]
- **Event Name**: `{{Event}}`
- **Event Parameters**:
  - `event_category`: `{{DLV - Event Category}}`
  - `event_label`: `{{DLV - Event Label}}`
  - `action_type`: `{{DLV - Action Type}}`
  - `image_index`: `{{DLV - Image Index}}`
  - `image_name`: `{{DLV - Image Name}}`
- **Triggering**: 
  - `Contact Section View`
  - `Gallery Interaction`
  - `Navigation Click`

---

## 4. GOOGLE ADS CONVERSION SETUP

### Create Conversions in Google Ads
1. In Google Ads, go to **Tools & Settings** → **Conversions**
2. Click **"+"** → **Website**
3. Create these conversions:

#### Primary Conversion: Made Contact
- **Conversion Name**: "Made Contact - Boat Inquiry"
- **Category**: Lead
- **Value**: $100 AUD
- **Count**: One
- **Attribution Model**: Last click
- **Include in 'Conversions'**: Yes

#### Secondary Conversion: High Intent Actions
- **Conversion Name**: "High Intent Actions - Boat Interest"
- **Category**: Lead
- **Value**: $50 AUD
- **Count**: One
- **Attribution Model**: Last click
- **Include in 'Conversions'**: Yes (or No if you want to track separately)

### Get Conversion IDs & Labels
After creating conversions, copy the:
- **Conversion ID** (e.g., "AW-123456789")
- **Conversion Label** (e.g., "abcd1234_efgh")

Use these in your GTM tags above.

---

## 5. OPTIONAL: GA4 CONFIGURATION

If you created the optional GA4 tags, configure:

### Mark Conversion Events
1. Go to **Admin** → **Events** → **Conversions**
2. Toggle ON the **"made_contact"** event as a conversion

### Create Remarketing Audiences
1. **High Intent Audience**:
   - Event: `high_intent_action`
   - Lookback window: 30 days

2. **Deep Scroll Audience**:
   - Event: `scroll_depth`
   - Parameter: `scroll_depth` >= 75

### Link to Google Ads (Optional)
1. Go to **Admin** → **Google Ads Links**
2. Link your GA4 property to Google Ads for audience sharing

---

## 6. TESTING YOUR SETUP

### GTM Preview Mode
1. Click **Preview** in GTM
2. Enter your website URL
3. Scroll through the page and click contact buttons
4. Verify events are firing in the GTM debug panel

### Google Ads Conversion Testing
1. Go to **Google Ads** → **Tools & Settings** → **Conversions**
2. Check conversion status (usually takes 24-48 hours for first conversions to show)
3. Test by completing a contact action on your site

### Expected Event Flow
1. User visits page → Page view
2. Scrolls 25% → `scroll_depth` event
3. Sees contact section → `contact_section_view` event  
4. Clicks phone button → `contact_button_click`, `high_intent_action`, `made_contact` → **Google Ads Conversion**
5. Copies phone number → `phone_copy`, `high_intent_action`, `made_contact` → **Google Ads Conversion**

---

## 🎯 SUCCESS METRICS TO MONITOR

**Primary KPIs (Google Ads)**:
- **Conversion Rate**: Made contact conversions ÷ clicks
- **Cost Per Conversion**: Ad spend ÷ made contact conversions
- **High Intent Rate**: High intent conversions ÷ clicks

**Secondary Analytics (if using GA4)**:
- **Engagement Rate**: `scroll_depth` (75%+) ÷ sessions  
- **Gallery Engagement**: `gallery_interaction` events ÷ sessions

Your GTM container ID is already: **GTM-TBL95F8R**

## ✅ IMPLEMENTATION STATUS

**All events have been implemented and tested in the application:**

### 🔥 Events Firing Successfully:
- ✅ **scroll_depth** - 25%, 50%, 75%, 100% scroll tracking
- ✅ **contact_section_view** - When contact section becomes visible
- ✅ **contact_button_click** - SMS and phone button clicks
- ✅ **phone_copy** - Phone number copy to clipboard
- ✅ **high_intent_action** - High-value user actions
- ✅ **made_contact** - Primary conversion event (SMS, phone, copy)
- ✅ **gallery_interaction** - Image clicks and lightbox opens
- ✅ **navigation_click** - Navigation menu interactions

### 📊 Event Parameters Included:
- `scroll_depth`, `button_type`, `contact_method`, `action_type`
- `event_category`, `event_label`, `image_index`, `image_name`

**Status**: All events are ready to be received - you just need to configure the GTM interface to capture and send them to Google Ads (and optionally GA4)!

## 🚀 NEXT STEPS

1. **Priority 1**: Create Google Ads conversions in your Google Ads account
2. **Priority 2**: Create Google Ads Conversion Tracking tags in GTM
3. **Priority 3**: Test the conversion tracking
4. **Optional**: Add GA4 tags if you want detailed analytics

This setup focuses on what matters most for your boat listing - **tracking actual conversions for your Google Ads campaigns**.