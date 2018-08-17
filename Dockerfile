# ------ HEADER ------ #
FROM alpine:3.8

# ------ RUN  ------ #
RUN apk --update --no-cache add openntpd

ADD ./ntpd.conf /etc/ntpd.conf

# ------ VOLUMES ------ #
VOLUME ["/etc/ntp"]

# ------ CMD/START/STOP ------ #
ENTRYPOINT ["/usr/sbin/ntpd", "-dvS"]