FROM python:3.8.5-alpine

ENV SERVICE=/home/app
ENV SERVICE_HOME=${SERVICE}/web

# set work directory
RUN mkdir -p $SERVICE
RUN addgroup -S django && adduser -S django -G django

# where the code lives
RUN mkdir $SERVICE_HOME
RUN mkdir $SERVICE_HOME/staticfiles
RUN mkdir $SERVICE_HOME/mediafiles
WORKDIR $SERVICE_HOME

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# copy project
COPY . $SERVICE_HOME

# Copy entrypoint
COPY ./entrypoint.sh $APP_HOME

RUN chown -R app:app $APP_HOME

USER app

CMD ["/bin/bash", "/home/app/web/entrypoint.sh"]
