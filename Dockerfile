FROM busybox
LABEL authors="contact@planetr.io"

COPY ./server /home/
CMD /home/server