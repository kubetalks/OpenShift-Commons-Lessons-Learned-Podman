# docbuilder: provides a UBI8 based Apache web server
# Author: KubeTalks
FROM quay.io/kubetalks/ubi8

# Non-privileged port for Apache webserver
EXPOSE 8080 8443

# Set LANG
ENV LC_ALL=en_US.UTF-8 \
    LANG=en_US.UTF-8

# Set SUMMARY and DESCRIPTION
ENV SUMMARY="UBI 8 with http server" \
    DESCRIPTION="UBI 8 Image with HTTP Server (Apache 2)" \
    HOME=/opt/app-root/src

# Set OpenShift labels
LABEL summary="$SUMMARY" \
      description="$DESCRIPTION" \
      maintainer="KubeTalks" \
      io.k8s.description="$DESCRIPTION" \
      io.k8s.display-name="httpd" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="httpd" \
      com.redhat.component="$NAME" \
      name="$FGC/$NAME" \
      version="$VERSION" \
      usage="s2i build https://github.com/kubetalks/Secure-Continuous-Delivery-with-Podman.git" \
      maintainer="KubeTalks"

# Install packages
RUN dnf -y --setopt=tsflags=nodocs install \
  httpd \
  && mkdir -p /opt/app-root/ \
  && dnf -y clean all --enablerepo='*'

# Copy httpd.conf
COPY configs/httpd.conf /etc/httpd/conf/httpd.conf

# Set workdir
WORKDIR ${HOME}

# Fix permissions
RUN chown -R 1001:0 /var/www/html \
  && chown -R 1001:0 /opt/app-root

# Set default user
USER 1001

# Entrypoint / Command
CMD ["/usr/sbin/httpd","-DFOREGROUND"]
