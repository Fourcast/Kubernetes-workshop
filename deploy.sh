NAMESPACE=change-me-2
kubectl create namespace $NAMESPACE
kubectl apply -f k8s -n $NAMESPACE