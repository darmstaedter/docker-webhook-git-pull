FROM almir/webhook

MAINTAINER Frederic Darmstädter <docker@darmstaedter.org>

ENV PROJECT_FOLDER /var/

COPY hooks.json /etc/webhook/hooks.json
RUN sed -i 's/###PROJECT_FOLDER###/ $PROJECT_FOLDER /g' /etc/webhook/hooks.json
CMD ["-verbose", "-hooks=/etc/webhook/hooks.json", "-hotreload"]
