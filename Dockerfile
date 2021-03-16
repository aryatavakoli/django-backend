FROM python:3.8.5-alpine

ENV SERVICE=/app
RUN addgroup -S $APP_USER && adduser -S $APP_USER -G $APP_USER
# set work directory
RUN mkdir -p $SERVICE/static

# where the code lives
WORKDIR $SERVICE

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
# copy project
COPY . $SERVICE
RUN pip install -r requirements.txt
COPY ./entrypoint.sh $SERVICE

CMD ["/bin/bash", "/app/entrypoint.sh"]
