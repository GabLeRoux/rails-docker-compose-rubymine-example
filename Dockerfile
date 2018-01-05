FROM ruby:2.2.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p /webapp
WORKDIR /webapp
COPY Gemfile /webapp/Gemfile
COPY Gemfile.lock /webapp/Gemfile.lock
RUN bundle install
COPY . /webapp
