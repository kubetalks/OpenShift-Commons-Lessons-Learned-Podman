Secure Continuous Delivery with Podman, Buildah, Skopeo and UBI
==============================================================

A hands-on demonstration of lessons learned migrating from other container build tools to the RHEL container ecosystem.
We aim to explore a set of command-line tools that are able to operate without a container daemon, and namely: Buildah, Podman, Quay and Skopeo.

We will discuss a new set of open-source Container Management Tools starting from a hands-on demonstration.
In a nutshell, Buildah builds, Podman runs, Skopeo transfers container images and Quay provides private and public container registries.

Moreover, we will take a look at best practices for building images that can easily be integrated into a CI/CD Pipeline and vulnerability scanning with Clair, thus replacing previous build tools in workflows.

Understand the impact of SELinux, namespaces and cgroups.
Move from docker-compose to Podman pods.
Build container images for OpenShift Container Platform.
Develop and test Ansible Playbooks / Roles with Podman.

Speakers
---------

### Mihai CRIVETI

Mihai builds containers for fun and profit, sometimes in the cloud, sometimes in his home datacenter, when the weather is cold. He's also the CTO and Senior Technical Staff Member for Cloud Native and Red Hat Solutions at IBM, where he builds multi-cloud solutions based on Red Hat OpenShift.


### Elif MOSESSOHN-SAMEDIN

DevOps (Automation) Engineer with experience in Infrastructure Optimization and Management. Red Hat Certified Architect in Infrastructure and ITIL Certified in IT Service Management. Advocate for Continuous Learning, Open Source Communities, and Technical Innovation.


Building the documentation
--------------------------

Building the presnetation requires `pandoc` and `LaTeX` (for PDF output only).

As an alternative, a prebuild image with all required tools is provided on quay.io.

https://quay.io/repository/cmihai/docbuilder

Build the documentation typing:

```bash
make
```

Note: when installing pandoc, make sure you're using the latest version from: https://pandoc.org/installing.html
