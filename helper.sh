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

#create HPA

# create service, type is NodePort
kubectl get svc
gcloud compute instances list
#get public IP
curl 35.187.40.83:31761
#get private IP --> NOT from within Cloud Shell but SSH'd into node! or busybox-curl into cluster.
curl 10.132.0.3:31761

ping 35.187.40.83
ping 10.132.0.3

#create fw rule
gcloud compute firewall-rules create temp-allow-nodeport --allow=TCP:31761

#retry
curl 35.187.40.83:31761