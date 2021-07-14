# Step 2 (k8s FTW)

The yaml file allocates 2 replicas of the litecoin:v0.18.1 image using a similar setup of step 1.

Note this yaml file is build to run on a local Docker-Kubernetes platform, to use on a different engine (EKS, base kops setup, gke etc) the storage class must match with what is available on the platform (aws-ebs, aws-efs, etc.).

![results](RunningStatefulset.png?raw=true "Results")
