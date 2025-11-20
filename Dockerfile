FROM nginx:alpine

# Remove default nginx page
RUN rm /usr/share/nginx/html/*

# Copy your custom index.html
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

