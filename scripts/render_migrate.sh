#!/usr/bin/env bash
set -euo pipefail

# Helper script for Render job: runs migrations and collects static files
echo "Running Django migrations..."
python django/manage.py migrate --noinput

echo "Collecting static files..."
python django/manage.py collectstatic --noinput

echo "Migrations and collectstatic completed."
