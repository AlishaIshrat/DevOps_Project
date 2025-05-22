FROM nginx:alpine

# Set environment variable so Nginx listens on the correct port
ENV PORT=8080

# Copy static files to nginx's web directory
COPY . /usr/share/nginx/html

# Replace default.conf with a custom one that uses $PORT
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
