FROM nginx
RUN rm -rf /usr/share/nginx/html/*
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY ./template/ /usr/share/nginx/html/template/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;" ]