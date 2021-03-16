Put application under app/

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

An import is needed: ```example: from <appname>.views import <function>```

And a urlpattern is needed: 
```ex: path('<some URI>', <function>,name="<a descriptive name>" ),```

est it out at [http://localhost:1337](http://localhost:1337). No mounted folders. To apply changes, the image must be re-built.
