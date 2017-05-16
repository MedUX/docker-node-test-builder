##################################
# medux/docker-node-test-builder #
##################################

FROM madoos/node-dind:latest

MAINTAINER MedUX <info@caseonit.com>

ENV WORK_DIR /container/workspace/
COPY entrypoint $WORK_DIR
WORKDIR $WORK_DIR

CMD ["/container/workspace/entrypoint"]