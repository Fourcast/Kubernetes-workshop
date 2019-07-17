 #!/bin/bash
 PROJECT_NAME=fourcast-gke-demo
 CLUSTER_NAME=scale-with-k8s
 CLUSTER_REGION=europe-west1
 CLUSTER_ZONE=europe-west1-d
 
 gcloud config set project $PROJECT_NAME
 gcloud config set compute/region $CLUSTER_REGION
 gcloud config set compute/zone $CLUSTER_ZONE
 gcloud container clusters create $CLUSTER_NAME \
 	--num-nodes 3 \
    --enable-autoscaling \
    --min-nodes 3 \
    --max-nodes 50
 
 gcloud container clusters get-credentials $CLUSTER_NAME