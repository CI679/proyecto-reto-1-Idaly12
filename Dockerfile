FROM ubuntu:latest
WORKDIR /app
RUN mkdir /app/meto
COPY . .
RUN chmod +x Main.sh
ENTRYPOINT ["./Main.sh"]