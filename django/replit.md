# Replit.md

## Overview

This is a Django web application for a virtual assistant hiring service, replicating a Prialto-style landing page. The project is built with Django 5.0 and uses Bootstrap 5 for frontend styling. Currently, it's a simple marketing/landing page application with a single app (`virtual_assistants`) that serves the homepage.

## User Preferences

Preferred communication style: Simple, everyday language.

## System Architecture

### Backend Framework
- **Framework**: Django 5.0.1
- **Project Structure**: Standard Django project layout with a main project folder (`django_project`) and one app (`virtual_assistants`)
- **Why Django**: Full-featured web framework with built-in admin, ORM, and templating

### Application Structure
- **Main Project**: `django_project/` - Contains settings, URL routing, and WSGI/ASGI configurations
- **App**: `virtual_assistants/` - Contains the landing page logic, templates, and URL routes
- **URL Routing**: Root URL (`/`) routes to the virtual_assistants app, admin available at `/admin/`

### Frontend
- **Templating**: Django's built-in template engine
- **CSS Framework**: Bootstrap 5.3 via CDN
- **Custom Styling**: Inline CSS with CSS variables for brand colors (Prialto blue theme)

### Database
- **ORM**: Django ORM is available but models are currently empty
- **Database**: Default SQLite (Django's default, can be upgraded to PostgreSQL)

### Hosting Configuration
- **Domain Handling**: Configured for Replit deployment using `REPLIT_DOMAINS` environment variable
- **CSRF**: Trusted origins set dynamically from Replit domains
- **Debug Mode**: Currently enabled (development mode)

### Running the Application
- Use `python manage.py runserver 0.0.0.0:5000` to start the development server
- Migrations: Run `python manage.py migrate` before first use

## External Dependencies

### Python Packages
- **Django 5.0.1**: Core web framework

### CDN Resources
- **Bootstrap 5.3**: CSS framework loaded from `cdn.jsdelivr.net`

### Environment Variables
- **REPLIT_DOMAINS**: Required - comma-separated list of allowed domains for the application
- **DJANGO_SETTINGS_MODULE**: Set to `django_project.settings`

### Future Considerations
- No database is actively used yet; models.py is empty
- No authentication system implemented beyond Django's built-in admin
- No external APIs or third-party services integrated