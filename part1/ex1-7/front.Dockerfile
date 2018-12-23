FROM ubuntu:18.04
RUN apt-get update && apt-get install -y curl gnupg git
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN git clone https://github.com/docker-hy/frontend-example-docker.git frontend
WORKDIR /frontend
RUN npm install
EXPOSE 5000
ENV API_URL=http://localhost:8000
CMD ["/usr/bin/npm", "start", "--prefix", "/frontend"]
