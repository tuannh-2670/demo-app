FROM ruby:2.6.5-alpine3.11

RUN apk add --no-cache --update build-base mariadb-dev tzdata imagemagick

ARG RAILS_ENV
ENV RAILS_ENV $RAILS_ENV
ENV RAKE_ENV $RAILS_ENV
ENV APP_DIR /usr/local/demo_app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

COPY Gemfile $APP_DIR/Gemfile
COPY Gemfile.lock $APP_DIR/Gemfile.lock
RUN gem install bundler:2.2.4
RUN bundle install

COPY . $APP_DIR
RUN ln -sf /dev/stdout $APP_DIR/log/sidekiq.log

CMD ["bundle", "exec", "sidekiq"]
