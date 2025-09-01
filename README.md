# Bayliner 175 For Sale

A single-page website showcasing a 2014 Bayliner 175 boat for sale, built with Ruby/Sinatra for easy deployment.

**Live Site**: <https://bayliner175forsale.com/>

## Features

- **Responsive Design**: Mobile-first approach with Tailwind CSS
- **Image Gallery**: Interactive carousel with lightbox viewing
- **Boat Specifications**: Detailed features and technical information
- **Contact Information**: Easy inquiry and demo scheduling

## Quick Start

```bash
# Install dependencies
bundle install

# Start the server
bundle exec rackup

# Visit http://localhost:9292
```

## Development

```bash
# Development server with auto-reload
bundle exec rerun -- rackup

# Code formatting
bundle exec standardrb --fix
```

## Deployment

This is a standard Rack application that can be deployed to any Ruby hosting platform:

- **Heroku**: Push to Heroku with the included Gemfile
- **Railway**: Deploy directly from Git
- **Digital Ocean App Platform**: Use the Ruby buildpack
- **Any VPS**: Run with `bundle exec rackup` or use a process manager

## Architecture

- **Backend**: Sinatra application serving static files
- **Frontend**: Vanilla HTML/CSS/JavaScript with Tailwind CSS
- **Images**: Optimized boat photography (11 images)
- **Icons**: Lucide icons via CDN
- **Fonts**: Google Fonts (Inter and Merriweather)

## File Structure

```
├── app.rb              # Sinatra application
├── config.ru           # Rack configuration
├── Gemfile             # Ruby dependencies
├── index.html          # Main page
├── theme.css           # Ocean-themed design system
└── images/             # Boat photography
```

## Contact

For inquiries about the boat, see the contact information on the website.
