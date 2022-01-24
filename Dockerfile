FROM amazon/aws-cli:latest
ENV HOME=/tmp
RUN curl -L "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl
ENTRYPOINT [ "sleep", "300" ]