# Exaninsa (Django)

Quick steps to deploy this Django app to Render (or run locally):

1. Install dependencies

```bash
pip install -r requirements.txt
```

2. Run migrations and collect static files

```bash
python django/manage.py migrate
python django/manage.py collectstatic --noinput
```

3. Run locally with Gunicorn

```bash
gunicorn django_project.wsgi --chdir django --bind 0.0.0.0:8000
```

Render notes:
- You can connect this repository to Render and the provided `render.yaml` will configure a Python web service.
- Build command: `pip install -r requirements.txt`
- Start command: `gunicorn django_project.wsgi --chdir django --bind 0.0.0.0:$PORT`

Running migrations on Render:
- This repo includes a one-off job `migrate-and-collectstatic` in `render.yaml` that runs migrations and collects static files.
- The job executes `scripts/render_migrate.sh` which runs `manage.py migrate` and `manage.py collectstatic --noinput`.
- To run it: go to your Render service → Jobs → Run Job → choose `migrate-and-collectstatic`.

Environment variables to set in Render:
- `SECRET_KEY`: a strong secret string
- `DEBUG`: `False`
- `DATABASE_URL`: (if using Render Postgres)
- `ALLOWED_HOSTS`: optional comma-separated hostnames

Local test commands
```bash
pip install -r requirements.txt
python django/manage.py migrate
python django/manage.py collectstatic --noinput
gunicorn django_project.wsgi --chdir django --bind 0.0.0.0:8000
```
