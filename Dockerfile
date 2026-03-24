FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file
COPY index.html /usr/share/nginx/html/

EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
