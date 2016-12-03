FROM almir/webhook

MAINTAINER Frederic Darmstädter <docker@darmstaedter.org>

COPY hooks.json /etc/webhook/hooks.json
CMD ["-verbose", "-verbose", "-hooks=/etc/webhook/hooks.json", "-hotreload"]
