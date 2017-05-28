FROM ubuntu

MAINTAINER Florian Loch (me@fdlo.ch)

EXPOSE 8000
EXPOSE 8082

COPY bootstrap.sh .
RUN ./bootstrap.sh

COPY run.sh .

CMD ./run.sh