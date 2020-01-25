# base image
FROM nginx:latest

WORKDIR /app/nginx-server

# remove the default config file
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]