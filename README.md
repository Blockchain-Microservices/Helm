# Microservices

### Clone this repository

    git clone     
 
### Enable extension for minikube
    
    minikube addons enable ingress

### Write your minikube IP address in the TOKEN_MANAGER_URL configuration

    TOKEN_MANAGER_URL: "http://localhost"
    
### Deploy the app with Helm

    helm install local helm/{version}  

## Note:

``` lab 3 - v1, v2, v3, v4 ```  
``` lab 4 - only v3 ```
