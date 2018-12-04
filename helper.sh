#local test
docker build -t eu.gcr.io/pxl-k8s/app:0.1 . 
docker run -d -p 5000:5000 eu.gcr.io/pxl-k8s/app:0.1
curl 127.0.0.1:5000
curl 127.0.0.1:5000/health
curl 127.0.0.1:5000/load


#deploy pod
kubectl get po
kubectl get po -o wide



#curl inside cluster
kubectl run curl-test --image=radial/busyboxplus:curl -i --tty --rm
#or just SSH into node
gcloud compute ssh <instance>


#curl pod
curl 10.4.0.3:5000

kubectl delete po pod-hello-kubernetes

#create deployment
kubectl get deploy

kubectl get po
### see health check being performed ###

watch kubectl get po

#create bug
curl 10.4.0.5:5000/create_bug

## see restart happened ###

