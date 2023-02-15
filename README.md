# ITI-DevOps-Final-Project-Infrastructure

### Build Docker Image For The Pyhton App From The Dockerfile , And Upload The Image To GCR :

  * $ docker build gcp-python gcr.io/my-project-ghazooo/python_image
  * $ docker push gcr.io/my-project-ghazooo/python_image

### Pull Another Redis Image From Docker Hub Then Push It To GCR :

  * $ docker pull redis
  * $ docker tag redis gcr.io/my-project-ghazooo/redis_image
  * $ docker push gcr.io/my-project-ghazooo/redis_image

![home_Page Image](./screenshot/project1.png)

## create the infrastructure using terraform to do the follwing
  * Implement a private GKE Cluster
  * Deploy and configure Jenkins on GKE
  * Deploy the backend application on GKE using the Jenkins pipeline

### Using userdata When The VM Created Will Do : 

  * Install gcloud 
  * Install kubectl
  * Install gcloud plugin
  * Install Ansible
  * Running Ansible playbook

![home_Page Image](./screenshot/userdata.png)


### For Apply The Terraform Code :
```
$ terraform init
$ terraform plan 
$ terraform apply
```

## Then, shh to the VM and connect to the cluster

```
$ gcloud compute ssh --zone "us-east4-a" "private-vm-instance"  --tunnel-through-iap --project "my-project-ghazooo"
```

```
$ gcloud container clusters get-credentials gke-cluster --zone us-east4-b --project my-project-ghazooo
```


### Get cluster pods and get load balancer external IP :

![home_Page Image](./screenshot/cluster.png)

![home_Page Image](./screenshot/service.png)

![home_Page Image](./screenshot/jenkins_start.png)

####Jenkins now is ready to be used
### Next step: <a href="https://github.com/Abdalla1297/DevOps-Final-project-code" target="_blank">CI/CD in Jenkins</a>



