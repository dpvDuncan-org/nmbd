FROM alpine

RUN apk -U --no-cache upgrade
RUN apk -U --no-cache add samba-server
RUN rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

COPY scripts/start.sh /
RUN chmod +x /start.sh

RUN rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

EXPOSE 137/udp 138/udp 139

ENTRYPOINT ["/start.sh"]