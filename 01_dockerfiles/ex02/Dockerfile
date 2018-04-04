# Based on ruby
FROM ruby:2.4

# Updating and install
RUN apt-get update && apt-get install sqlite3 nodejs git build-essential libpq-dev postgresql-client-9.4 -y
RUN gem install rails -v 5.1.0

# Path of the app install
ENV APP_PATH /opt/app
RUN mkdir -p APP_PATH
WORKDIR $APP_PATH

# Install all the dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the project
COPY . .

# Migrate the db
RUN bin/rails db:migrate
