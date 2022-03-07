FROM ruby:3.0.3-slim-bullseye
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /workspace
WORKDIR /workspace
ADD Gemfile /workspace/Gemfile
ADD Gemfile.lock /workspace/Gemfile.lock
RUN bundle install
ADD . /workspace
