Put application under app/

Creating a project:
```
$ mkdir django-on-docker && cd django-on-docker
$ mkdir app && cd app
$ python3.8 -m venv env
$ source env/bin/activate
(env)$ pip install django==3.0.7
(env)$ django-admin.py startproject hello_django .
(env)$ python manage.py migrate
(env)$ python manage.py runserver
```

In `apps/djangoprog/settings.py`
```
INSTALLED_APPS = [
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",

    "<appname>",
] 
```


For every view created in your app, in `apps/djangoprog/urls.py`:

An import is needed: ```example: from <appname>.view import <function>```

And a urlpattern is needed: 
```ex: path('<some URI>', <function>,name="<a descriptive name>" ),```

Run it using `docker-compose up -d --build`

test it out at [http://localhost:1337](http://localhost:1337). No mounted folders. To apply changes, the image must be re-built.
