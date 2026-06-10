FROM nginx:1.27-alpine
ARG APP_VERSION=dev
ENV APP_VERSION=${APP_VERSION}
COPY index.html /tmp/index.html.tmpl
RUN apk add --no-cache gettext && \
    envsubst < /tmp/index.html.tmpl > /usr/share/nginx/html/index.html && \
    rm /tmp/index.html.tmpl
EXPOSE 80
