FROM nginx:alpine
LABEL maintainer="Samuel Olowoyeye"

COPY website /website
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
