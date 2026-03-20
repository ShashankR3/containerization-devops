FROM ubuntu
WORKDIR /app
COPY app.c
RUN apt-get update && \
    apt-get install -y gcc
RUN gcc app.c -o app
CMD [ "./app" ]
