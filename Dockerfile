FROM alpine:edge
RUN apk --update --upgrade add \
	build-base \
	libffi-dev \
	ruby-dev \
	ruby-full
RUN gem install --no-document bundler
WORKDIR /app
COPY Gemfile* /app/
RUN bundle install --no-cache