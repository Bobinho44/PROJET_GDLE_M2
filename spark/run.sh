#!/bin/bash

## create the cluster
gcloud dataproc clusters create cluster-92bc --enable-component-gateway --region us-central1 --master-machine-type n1-standard-4 --master-boot-disk-size 500 --num-workers 5 --worker-machine-type n1-standard-4 --worker-boot-disk-size 500 --image-version 2.0-debian10 --project lsdm-401110

## copy pig code
gsutil cp pagerank.py gs://myown_bucket2/

## Clean out directory
gsutil rm -rf gs://myown_bucket2/out


## run
## (suppose that out directory is empty !!)
gcloud dataproc jobs submit pyspark --region us-central1 --cluster cluster-92bc gs://myown_bucket2/pagerank.py

## delete cluster...
gcloud dataproc clusters delete cluster-92bc --region us-central1 --quiet
