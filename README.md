# InCluster Broker

This is an implementation of the [Open Broker API](https://openbrokerapi.org)
that is suited for local development. Instead of provisioning services
from a cloud provider, it creates the service in a container on the cluster using Helm.

# Install
TODO: Create a helm chart and repo.

# Use
TODO: Example manifests to create a mysql db.

# Local Development

## Requirements

* Docker
* Minikube v0.24.1

On a Mac you will also need either VirtualBox installed,
or the Minikube xhyve driver (to use the hypervisor that comes with Docker for Mac).

https://github.com/kubernetes/minikube/blob/master/docs/drivers.md#xhyve-driver 

The default Minikube driver is virtualbox, to use another specify it in
**~/.minikube/config/config.json**:

```json
{
    "vm-driver": "xhyve"
}
```

## Optional Tools
The Makefile tries to runs non-required tools in a Docker container. If you prefer to run
the commands locally, export `USE_DOCKER=false` and install the tools below:

* [Draft](https://draft.sh)
* [Helm](https://helm.sh)
* [Service Catalog CLI (svcat)](https://github.com/kubernetes-incubator/service-catalog/cmd/svcat)


## Initial Setup

1. Create a Minikube cluster for local development: `make init`.
2. Make sure everything is running: `kubectl get nodes --all-namespaces`.

## Deploy

Compile and deploy the broker to your local cluster: `make run`.
