FROM ubuntu:18.04
RUN apt-get update && apt-get install -y curl gnupg git
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN git clone https://github.com/docker-hy/backend-example-docker backend
WORKDIR /backend
RUN npm install
EXPOSE 8000
ENV FRONT_URL=http://localhost:5000
CMD ["/usr/bin/npm", "start", "--prefix", "/backend"]
