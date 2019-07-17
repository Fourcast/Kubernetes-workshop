#!/bin/bash
gcloud builds submit --config cloudbuild-local.yaml app --project fourcast-gke-demo
#create firewall rule to allow nodeport traffic if time permits