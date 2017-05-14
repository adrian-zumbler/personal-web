FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /adrianmeza
WORKDIR /adrianmeza
ADD Gemfile /adrianmeza/Gemfile
ADD Gemfile.lock /adrianmeza/Gemfile.lock
RUN bundle install
ADD . /adrianmeza

