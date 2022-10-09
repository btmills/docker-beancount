FROM python:3.7-alpine

ARG REPOSITORY=https://github.com/beancount/beancount.git
ARG VERSION

RUN apk add --update \
		g++ \
		gcc \
		git \
		libxml2-dev \
		libxslt-dev \
		musl-dev \
	&& git clone "$REPOSITORY" --branch "$VERSION" --depth 1 \
	&& pip install /beancount

EXPOSE 8080
