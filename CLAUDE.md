# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a static single-page website showcasing a 2014 Bayliner 175 boat for sale. The site is built as a simple HTML/CSS/JavaScript application without any build process or dependencies.

## Architecture

**Single Page Structure:**
- `index.html` - Complete boat listing page with hero section, image gallery, specifications, and contact information
- `theme.css` - Ocean-themed CSS custom properties defining the design system
- `images/` - All boat photography (11 images total)

**Key Components:**
- **Hero Section** - Main boat image with price and key details
- **Gallery Carousel** - Horizontally scrollable image gallery with navigation dots
- **Lightbox System** - Full-screen image viewer with keyboard/touch navigation
- **Feature Cards** - Animated cards highlighting boat features
- **Contact Section** - Demo scheduling and inquiry information

**JavaScript Features:**
- Gallery carousel with responsive breakpoints (1/2/3 images per view)
- Lightbox with keyboard navigation (arrow keys, escape)
- Touch/swipe support for mobile gallery navigation
- Staggered animations for feature cards
- Lucide icons integration

## Development

**Dependencies:**
- Tailwind CSS (CDN) - Utility-first CSS framework
- Lucide Icons (CDN) - Icon library
- Google Fonts (CDN) - Inter and Merriweather fonts

**No Build Process:** This is a static site that runs directly in the browser. Simply open `index.html` in a web browser or serve from any HTTP server.

**Theme System:** 
The `theme.css` file uses CSS custom properties (CSS variables) to define a cohesive ocean-inspired color palette. Colors are defined using OKLCH color space for better perceptual uniformity.

**Image Management:**
- Hero image: `bayliner-175-hero-main.jpg`
- Gallery images: `IMG_*.jpg` files (10 images)
- All images are optimized for web and referenced in the lightbox JavaScript array

**Responsive Design:**
- Mobile-first approach with Tailwind breakpoints
- Gallery shows 1/2/3 images based on screen size
- Lightbox adapts controls for mobile (smaller buttons, different layout)

## Key Implementation Details

**Lightbox System:**
- Images stored in `lightboxImages` array with src, alt, and title
- Navigation cycles through all 11 images (hero + gallery)
- Supports mouse clicks, keyboard arrows, and touch gestures

**Gallery Carousel:**
- Uses CSS transforms for smooth sliding animation
- Responsive `slidesToShow` variable updates on window resize
- Dot navigation syncs with current slide position

**Animation System:**
- CSS keyframes for entrance animations (hero, nav, price badge, feature cards)
- Staggered delays applied via JavaScript for feature cards
- Hover effects on interactive elements (images, buttons)