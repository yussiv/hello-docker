FROM ubuntu:18.04
RUN apt-get update && apt-get install -y curl
CMD ["/bin/bash", "-c", "read website; sleep 3; curl http://$website;"]


