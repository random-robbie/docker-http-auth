FROM python:2.7.13-alpine
RUN apk add --no-cache git nano
RUN apk add --update bash
RUN git clone https://github.com/bjeborn/basic-auth-pot.git
WORKDIR  /basic-auth-pot/
RUN sed -i "s|8080|80 |g" /basic-auth-pot/bap.py
EXPOSE 80
RUN chmod -R 777 /basic-auth-pot/
CMD ["python", "/basic-auth-pot/bap.py"]
