## CMSKubernetes
This repository contains all necessary tools and documentation to
build and deploy cms services to kubernetes (k8s). The repository
is organized in the following way:

- [docker](https://github.com/dmwm/CMSKubernetes/tree/master/docker)
area contains cmsweb service areas. Within individual area you'll find
Dockerfile and aux files required to build docker image for that service
- [kubernetes](https://github.com/dmwm/CMSKubernetes/tree/master/kubernetes)
area contains several projects for deploying cmsweb service to k8s.
Even though some of them are obsolete now we still keep them around for
the reference.
  - [kubernetes/cmsweb-nginx](https://github.com/dmwm/CMSKubernetes/tree/master/kubernetes/cmsweb-nginx)
  area contains all documentation about **current cmsweb k8s deployment**. It is
  based on usage of nginx middleware.
  - [kubernetes/traefik](https://github.com/dmwm/CMSKubernetes/tree/master/kubernetes/cmsweb-nginx)
  area contains previous cmsweb deployment using traefik middleware
  - [kubernetes/k8s-whoami](https://github.com/dmwm/CMSKubernetes/tree/master/kubernetes/k8s-whoami)
  area contains all files required for simple k8s whoami service based on
  traefik middleware
  - [kubernetes/k8s-whoami-nginx](https://github.com/dmwm/CMSKubernetes/tree/master/kubernetes/k8s-whoami-nginx)
  area contains all files required for simple k8s whoami service based on nginx
  middleware
  - [kubernetes/rucio](https://github.com/dmwm/CMSKubernetes/tree/master/kubernetes/rucio)
  area contains all files required for Rucio deployment
  - [kuberentes/tfaas](https://github.com/dmwm/CMSKubernetes/tree/master/kubernetes/tfaas)
  provides all files for [TFaaS](https://github.com/vkuznet/TFaaS) k8s setup
  - [kubernetes/cmsmon](https://github.com/dmwm/CMSKubernetes/tree/master/kubernetes/cmsmon)
  contains files for cmsmon service on k8s
  - [kubernetes/Prometheus](https://github.com/dmwm/CMSKubernetes/blob/master/kubernetes/Prometheus.md)
  provides recipe how to deploy Prometheus service on k8s

- [helm](https://github.com/dmwm/CMSKubernetes/tree/master/helm) area contains
helm files for Rucio
