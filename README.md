wordpress containerization and ci/cd pipeline

this project provides a containerized setup for deploying a wordpress application with a mysql database on aws managed kubernetes service using gitlab ci/cd pipeline. this setup leverages docker, gitlab ci/cd , and amazon eks for deployment.

Project Overview -

This project includes:
- Containerization of WordPress: A Docker container for WordPress with persistent storage for the `/wp-content` directory.
- MySQL Container: A Docker container for the MySQL database backend.
- CI/CD Pipeline: Automated deployment pipeline to AWS using GitLab CI/CD, with testing for successful WordPress deployment.

Prerequisites

Before starting, ensure the following:
- Gitlab instance/ SAAS service
- have GitLab runner deployed in kubernetes.
- repository for pipeline.
- EKS clusters.
- A Kubernetes service account with workload identity enabled for runner.
- A artifact registry from where docker image is getting deployed and pulled.
- secrets created in k8 cluster for db.(vault could be used for more security).
- showed PVC file just to ensure your requirement for persistent volume i would be using helm to manage all resources under one umberalla wether it is HPA , PVC aur service.

Setup Instructions

Step 1: Containerization

Step 2: Building 
- using gitlab-ci

Step 3: AWS EKS Cluster Setup
1. Create an EKS cluste using IAC/AWS CLI 
2. Configure `kubectl` to connect to the EKS cluster:

Step 4: Kubernetes Deployment Files
1. WordPress Deployment: Define a `wordpress-deployment.yaml` with persistent volume claims.
2. MySQL Deployment: Define a `mysql-deployment.yaml` file with a persistent volume.


------------------------------------------

CI/CD Pipeline Configuration :-


GitLab CI/CD Configuration

1. Environment Variables: Defined sensitive data like database credentials in GitLab CI/CD under Project Settings > CI/CD > Variables.

2. .gitlab-ci.yml Pipeline File

Step 5: Testing and Validation
- After deployment, the test stage checks if the WordPress homepage loads. This validates that the WordPress application is correctly running and accessible.



Conclusion
This README provides the core setup for containerizing and deploying a WordPress application using a CI/CD pipeline.

Improvement for the issues facing :- we can set autoscaling in kubernetes.
