FROM registry.access.redhat.com/ubi8/python-36:latest
EXPOSE 8080

ENV OUTPUT_DIR=build \
    MKDOCS_RUN= \
    MKDOCS_BUILD="mkdocs build" \
    DEPLOY_PORT=8080 \
    SUMMARY="Platform for building a static webpage via mkdocs" \
    DESCRIPTION="Static webpage via mkdocs"

LABEL io.k8s.description="$DESCRIPTION" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,mkdocs" \
      com.redhat.deployments-dir="/opt/app-root/src" \
      maintainer="Robert Bohne <robert.bohne@redhat.com>" \
      summary="$SUMMARY" \
      description="$DESCRIPTION" \
      name="quay.io/openshift-examples/ubi8-s2i-mkdocs"


COPY ./s2i/ $STI_SCRIPTS_PATH

USER 1001

# Set the default CMD to print the usage
CMD ${STI_SCRIPTS_PATH}/usage