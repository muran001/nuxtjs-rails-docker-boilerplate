# template-nuxtjs-rails_api-mysql

This repository contains file for building docker containers for a web application.

# setup

Before executing below commands, you should install install [docker](https://www.docker.com/).

```
$ git clone <your repository>

$ gem i docker-sync

$ cp .env.sample .env

$ docker-sync start

$ docker-compose up -d --build

$ docker-compose exec web bundle install --path vendor/bundle

$ docker-compose exec web bundle exec rails s -b 0.0.0.0 -p 4000
```
