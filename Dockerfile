FROM nginx:alpine

RUN mkdir /static

RUN rm /etc/nginx/conf.d/*
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/default.conf /etc/nginx/templates/default.conf.template

EXPOSE 80

CMD /bin/sh -c "envsubst < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf" && cat /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'
