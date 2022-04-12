# K8s Examples

> Kubernetes examples

## Prerequisites

kubectl:

https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/

Kustomize:

https://kubectl.docs.kubernetes.io/installation/kustomize/

Helm:

https://helm.sh/docs/intro/install/

Ingress (with Helm):

```ssh
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

helm repo update

helm install ingress-nginx ingress-nginx/ingress-nginx --create-namespace --namespace ingress-nginx
```

## Common commands:

Get all the pods, services, statefulsets, etc.
```ssh
kubectl get all
```

Get all the namespaces:
```ssh
kubectl get ns
```

Create a namespace:
```ssh
kubectl create ns <namespace-name>
```
Apply a K8s manifest:
```ssh
kubectl -n <namespace-name> apply -f <file>
```

Describe a resource:
```ssh
kubectl -n <namespace-name> describe <kind> <name>
```

Show pod logs:
```ssh
kubectl -n <namespace-name> logs <pod-name>
```

Exec a pod sh:
```ssh
kubectl -n <namespace-name> exec -it <pod-name> -- sh
```

Delete a resource:
```ssh
kubectl -n <namespace-name> delete <kind> <name>
```

Get nodes ip:
```ssh
kubectl get nodes -o wide
```