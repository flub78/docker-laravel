# Laravel with phpunit 

FROM hitalos/laravel

RUN wget https://phar.phpunit.de/phpunit-7.2.phar
RUN chmod +x phpunit-7.2.phar
RUN mv phpunit-7.2.phar /usr/local/bin/phpunit

CMD /bin/bash

