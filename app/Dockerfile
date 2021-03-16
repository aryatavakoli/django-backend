FROM python:3.8.5-alpine

ENV SERVICE=/home/app
ENV SERVICE_HOME=/home/app/web
ENV USER=django

# set work directory
RUN mkdir -p $SERVICE
RUN addgroup -S $USER && adduser -S $USER -G $USER

# where the code lives
RUN mkdir $SERVICE_HOME
RUN mkdir $SERVICE_HOME/staticfiles
RUN mkdir $SERVICE_HOME/mediafiles
WORKDIR $SERVICE_HOME

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY ./requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# copy project
COPY . $SERVICE_HOME

# Copy entrypoint
COPY ./entrypoint.sh $SERVICE_HOME

RUN chown -R $USER:$USER $SERVICE_HOME

USER $USER

CMD ["/bin/bash", "/home/app/web/entrypoint.sh"]
