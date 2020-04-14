# ubi8-s2i-mkdocs [![Docker Repository on Quay](https://quay.io/repository/openshift-examples/ubi8-s2i-mkdocs/status "Docker Repository on Quay")](https://quay.io/repository/openshift-examples/ubi8-s2i-mkdocs)



Based on [ubi8/python-36:latest](https://access.redhat.com/containers/#/registry.access.redhat.com/ubi8/python-36)

Inspired by [ubi8-s2i-web-app](https://github.com/nodeshift/ubi8-s2i-web-app)

## How to use it
### s2i cli

via Docker

```
s2i build https://github.com/openshift-examples/web.git \
    quay.io/openshift-examples/ubi8-s2i-mkdocs:latest \
    my-openshift-example
```

via Podman

```bash
s2i build https://github.com/openshift-examples/web.git \
    quay.io/openshift-examples/ubi8-s2i-mkdocs:latest \
    --as-dockerfile my-openshift-example

podman build -t my-openshift-example:latest -f my-openshift-example .
podman run -p 8080:8080 my-openshift-example:latest
```

### OpenShift new-build / new-app

```
oc new-build quay.io/openshift-examples/ubi8-s2i-mkdocs:latest~https://github.com/openshift-examples/web.git
```

```
oc new-app quay.io/openshift-examples/ubi8-s2i-mkdocs:latest~https://github.com/openshift-examples/web.git
```