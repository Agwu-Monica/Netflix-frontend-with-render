FROM nginx:alpine
# Copy our HTML file into the Nginx web server folder
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80