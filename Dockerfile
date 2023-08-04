# docker build -t boostrapcarousel -f Dockerfile . --no-cache
# docker run --name boostrapcarousel -p 8080:8080 -d boostrapcarousel
FROM nginx:latest
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY carousel.css /usr/share/nginx/html
COPY color-modes.js /usr/share/nginx/html
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
USER nginx
RUN ls /usr/share/nginx/html
