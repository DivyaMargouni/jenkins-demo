FROM nginx:latest

RUN echo "Hello from Jenkins Docker Deployment!" > /usr/share/nginx/html/index.html

EXPOSE 80
