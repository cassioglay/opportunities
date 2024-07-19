FROM golang:1.16

WORKDIR /go/src
ENV PATH="~/go/bin:${PATH}"

RUN usermod -u 1000 www-data
RUN mkdir -p /var/www/.cache
RUN chown -R www-data:www-data /go
RUN chown -R www-data:www-data /var/www/.cache
USER www-data

CMD ["tail", "-f", "/dev/null"]