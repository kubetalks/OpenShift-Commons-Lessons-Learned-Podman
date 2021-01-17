# KubeTalks - Build images with Pandoc
# Mihai Criveti

# Build the container image starting from kubetalks/httpd
container=$(buildah from quay.io/kubetalks/httpd)

# Install make and git
buildah run ${container} dnf install -y make git

# Download pandoc locally and copy it to the image
wget https://github.com/jgm/pandoc/releases/download/2.9.2/pandoc-2.9.2-linux-amd64.tar.gz -O /tmp/pandoc.tar.gz
(cd /tmp; tar zxf pandoc.tar.gz)
buildah copy ${container} /tmp/pandoc-2.9.2/bin /usr/local/bin

# Commit the image
buildah commit ${container} quay.io/kubetalks/pandoc

# Inspect the new image
buildah images | grep ${container}
buildah inspect ${container}

# Test that the image works correctly
podman run --rm quay.io/kubetalks/pandoc pandoc --version
