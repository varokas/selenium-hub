FROM selenium/hub
MAINTAINER varokas@panusuwan.com

USER root

COPY generate_config /opt/selenium/generate_config
COPY entry_point.sh /opt/bin/entry_point.sh
RUN chmod +x /opt/bin/entry_point.sh
RUN chmod +x /opt/selenium/generate_config
RUN chown -R seluser /opt/selenium

USER seluser

CMD ["/opt/bin/entry_point.sh"]
