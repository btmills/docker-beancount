FROM python:3.7-alpine

ARG VERSION

RUN apk add --update \
		g++ \
		gcc \
		git \
		libxml2-dev \
		libxslt-dev \
		musl-dev \
	&& git clone https://github.com/beancount/beancount.git --branch "$VERSION" --depth 1 \
	&& pip install /beancount

EXPOSE 8080
