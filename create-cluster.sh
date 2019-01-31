 PROJECT_NAME=pxl-k8s
 CLUSTER_NAME=niels-sandbox
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