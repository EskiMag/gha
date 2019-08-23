FROM alpine:latest
LABEL "com.github.actions.name"="Github Deployment"
LABEL "com.github.actions.description"="Create GitHub Deployment"
LABEL "com.github.actions.icon"="git-branch"
LABEL "com.github.actions.color"="gray-dark"

LABEL "maintainer"="Stefan Luptak <stefan.luptak@smarkup.com>"

COPY install.sh install.sh
RUN ./install.sh

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]