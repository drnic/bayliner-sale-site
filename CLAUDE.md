# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a single-page website showcasing a 2014 Bayliner 175 boat for sale. The site is now wrapped in a Ruby/Sinatra application for easy deployment while maintaining the simple HTML/CSS/JavaScript frontend.

## Architecture

**Ruby Application Structure:**

- `app.rb` - Sinatra application serving the static content
- `config.ru` - Rack configuration file
- `Gemfile` - Ruby dependencies (Sinatra, Puma, development tools)

**Frontend Structure:**

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

**Ruby Dependencies:**

- Sinatra (~> 3.0) - Lightweight web framework
- Puma (~> 6.0) - Web server
- Rack (~> 2.2) - Web server interface
- rerun (~> 0.14) - Development file watcher
- standardrb - Ruby code formatter/linter

**Frontend Dependencies:**

- Tailwind CSS (CDN) - Utility-first CSS framework
- Lucide Icons (CDN) - Icon library
- Google Fonts (CDN) - Inter and Merriweather fonts

**Development:** Run `bundle install` to install dependencies, then `bundle exec rackup` to start the server at http://localhost:9292. For development with auto-reload, use `bundle exec rerun -- rackup`.

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
