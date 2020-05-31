#!/bin/bash
gcloud compute instances create --zone europe-west1-b reddit-1 \
--image-family reddit-full \
--tags=reddit \
--preemptible \
--machine-type=f1-micro

