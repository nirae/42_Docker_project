#Based on ruby
FROM ruby:2.4

# Name 
ENV NAME=ft-rails

# Updating and install
RUN apt-get update && apt-get install -y sqlite3 \
	nodejs \
	git \
	build-essential \
	libpq-dev \
	postgresql-client \
	postgresql \
	libxslt1-dev \
	libqt4-webkit \
	libqt4-dev \
	xvfb \
	redis-server

# Path of the app install
ENV APP_PATH /opt/app
RUN mkdir -p APP_PATH
WORKDIR $APP_PATH

# Install all the dependencies
COPY Gemfile* $APP_PATH/
RUN bundle install

# Copy the project
COPY . .

# Create the rails app if doesn't exist or just migrate the database
RUN if rails new $APP_PATH; \
	then echo "Rails app created!"; \
	else rake db:create && rake db:migrate; \
	fi
