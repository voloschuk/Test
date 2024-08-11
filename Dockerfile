FROM ubuntu

RUN apt update \
    && apt install -y apache2 php \
    && apt clean

COPY ./index.php /var/www/html/index.php

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]



