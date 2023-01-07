FROM nginx

USER root

# Copy the src
WORKDIR /app
Copy index.html /usr/share/nginx/html
COPY . /app
RUN ls -la /app

USER 1001

# EXPOSE 5001
ENTRYPOINT ["html", "/app/index.html"]
