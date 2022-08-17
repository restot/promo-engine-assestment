# .Dockerfile

FROM ruby:3.1.0-slim-buster

WORKDIR /gateway-v0

COPY . /gateway-v0

RUN bundle install

EXPOSE 3000

CMD rails server