FROM python:3.7-alpine

ARG VERSION

RUN apk add --update \
		g++ \
		gcc \
		libxml2-dev \
		libxslt-dev \
		mercurial \
		musl-dev \
	&& hg clone https://bitbucket.org/blais/beancount --rev "$VERSION" \
	&& pip install /beancount

EXPOSE 8080
