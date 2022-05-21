FROM ruby:3.0.0-alpine
RUN apk update && apk add git make gcc musl-dev
WORKDIR /app
COPY . .
RUN bundle install
