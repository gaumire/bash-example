FROM ubuntu

COPY . /app

WORKDIR /app

CMD ["/app/entrypoint.sh"]
