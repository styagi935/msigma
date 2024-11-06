WordPress Containerization and CI/CD Pipeline

This project provides a containerized setup for deploying a WordPress application with a MySQL database on AWS managed Kubernetes service using gitlab CI/CD pipeline. This setup leverages Docker, GitLab CI/CD , and Amazon EKS for deployment.

Table of Contents
1. [Project Overview](#project-overview)
2. [Prerequisites](#prerequisites)
3. [Setup Instructions](#setup-instructions)
4. [CI/CD Pipeline Configuration](#cicd-pipeline-configuration)
5. [Testing and Validation](#testing-and-validation)

Project Overview

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
