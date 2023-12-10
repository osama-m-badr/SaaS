FROM nginxinc/nginx-unprivileged:1.25
USER root
COPY app /usr/share/nginx/html/
RUN chown -R nginx:nginx  /usr/share/nginx/html/
RUN chmod -R 777 /usr/share/nginx/html/
USER nginx
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
