# InCluster Broker

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

## Initial Setup

1. Create a Minikube cluster for local development: `make init`.
2. Make sure everything is running: `kubectl get nodes --all-namespaces`.

## Deploy

Compile and deploy the broker to your local cluster: `make run`.
