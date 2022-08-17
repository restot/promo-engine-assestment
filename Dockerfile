# .Dockerfile

FROM ruby:3.1.0-slim-bullseye
ENV RAILS_ENV=production

RUN apt update \
    && apt install -y --no-install-recommends libpq-dev \
    build-essential \
    curl \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && truncate -s 0 /var/log/*log

WORKDIR /app

COPY . /app

RUN bundle config set --without 'development test' \
       && bundle install --quiet \
       && rm -rf /usr/local/bundle/cache/*.gem \
       && find /usr/local/bundle/gems/ -name "*.c" -delete \
       && find /usr/local/bundle/gems/ -name "*.o" -delete

EXPOSE 3000

CMD rails server