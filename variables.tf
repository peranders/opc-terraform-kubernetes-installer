# Build Kubernetes based on the Oracle Linux Container Services for use with Kubernetes.
# The current release of Oracle Linux Container Services for use with Kubernetes is based on Kubernetes
# version 1.8.4, as released upstream.
#
# Note: Initial version created by: cameron.senese@oracle.com

### Credentials ###
  variable "ociUser" {
      description = "Username - OCI-Classic user account with Compute_Operations rights"
  }
  variable "ociPass" {
      description = "Password - OCI-Classic user account with Compute_Operations rights"
  }
  variable "idDomain" {
      description = "Platform version dependent - Either tenancy ID Domain or Compute Service Instance ID"
  }
  variable "apiEndpoint" {
      description = "OCI-Classic Compute tenancy REST Endpoint URL"
  }
  variable "containerRepoUser" {
      description = "Username - Oracle Container Registry"
  }
  variable "containerRepoPass" {
      description = "Password - Oracle Container Registry"
  }

### Environments ###
  variable "envDashMonMet" {
      description = "Enhanced Dashboard, Monitoring, and Metrics (Include K8s dashboard v1.8.1, Grafana, Heapster, & InfluxDB)"
  }
  variable "envFn" {
      description = "Functions as a Service (Include Fn FaaS)"
  }
  variable "envIngress" {
      description = "Kubernetes Ingress (Include Traefik Ingress and sample applications)"
  }
  variable "envMicroSvc" {
      description = "Microservices Environment (Include WeaveScope Dashbord and E-Commerce application)"
  }
  variable "envSvcMesh" {
      description = "Service Mesh (Include Istio & BookInfo application)"
  }

### Keys ###
  variable ssh_user {
    description = "Username - Account for ssh access to the image"
    default     = "opc"
  }
  variable ssh_private_key {
    description = "File location of the ssh private key"
    default     = "./ssh/id_rsa"
  }
  variable ssh_public_key {
    description = "File location of the ssh public key"
    default     = "./ssh/id_rsa.pub"
  }
