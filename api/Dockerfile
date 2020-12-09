FROM ruby:2.5.7

RUN apt-get install -qq && apt-get install -y libpq-dev

WORKDIR /api

COPY Gemfile /api/Gemfile
COPY Gemfile.lock /api/Gemfile.lock

RUN gem update --system && gem install bundler -v 2.0.1

RUN bundle install

COPY . /api
