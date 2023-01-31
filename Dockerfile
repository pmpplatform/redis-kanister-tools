FROM redis:7.0.7

RUN apt update
RUN apt install -y npm bash curl redis-tools
RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash - && apt install -y nodejs
RUN npm install redis-dump -g

RUN curl https://raw.githubusercontent.com/kanisterio/kanister/master/scripts/get.sh | bash
CMD [ "/usr/bin/tail", "-f", "/dev/null" ]