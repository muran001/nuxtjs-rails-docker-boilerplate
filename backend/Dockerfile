FROM ruby:2.6.3
ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ADD gemrc /etc/gemrc
RUN chmod uog+r /etc/gemrc && \
    gem install bundler rails
