FROM vectorim/element-web

MAINTAINER Fabian Kaindl <gitlab-docker@fabiankaindl.de>
# Copy Script into the container
HEALTHCHECK --interval=30s --timeout=3s \
  CMD code_http=$(curl -sI -o /dev/null -w %{http_code} http://localhost:80); if [ $code_http != 200 ];then exit 1;else exit 0; fi
