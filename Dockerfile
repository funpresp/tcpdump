FROM alpine:3.12

RUN apk --no-cache --update --verbose add grep bash tcpdump \
    && rm -rf /var/cache/apk/* /tmp/* /sbin/halt /sbin/poweroff /sbin/reboot

CMD ["/usr/sbin/tcpdump", "-n", "-S", "-tttt"]
