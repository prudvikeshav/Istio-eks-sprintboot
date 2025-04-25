#!/bin/bash
CLUSTER_NAME = ISTIO-DEMO
REGION = us-east-1

eksctl create cluster --name $CLUSTER_NAME --region $REGION --node 2 --mananged
