Creating a app:
```
$ mkdir django-on-docker && cd django-on-docker
$ mkdir app && cd app
$ python3.8 -m venv env
$ source env/bin/activate
(env)$ pip install django==3.0.7
(env)$ python manage.py startapp <some_appname>
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

Do the follwoing:

import the view: 

```example: from <appname>.view import <function>```

update the urlpattern: 
```example: path('<some URI>', <function>,name="<a descriptive name>" ),```

Run everything like this:
```
 $ chmod u+x run.sh
 $ ./run.sh
```

if you want to ssh into the database container, run:
```
 $ docker exec -it django-backend_db_1 bash
```
test it out at [http://localhost:1337](http://localhost:1337). No mounted folders. To apply changes, the image must be re-built.

