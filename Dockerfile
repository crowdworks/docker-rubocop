FROM ruby:2.5.1-alpine

RUN adduser -h "/home/ruby" -s "/bin/bash" "ruby" && \
    mkdir -p "/usr/src/app" && \
    chown "ruby:ruby" "/usr/src/app" "$BUNDLE_APP_CONFIG"

USER ruby

RUN gem install querly -v "0.13.0"

WORKDIR /usr/src/app
