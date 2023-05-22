# Microservices

## Instructions

### Clone this repository

    git clone https://github.com/Blockchain-Microservices/Helm.git
 
### Enable extension for minikube
    
    minikube addons enable ingress

### Write your minikube IP address in the TOKEN_MANAGER_URL configuration

    TOKEN_MANAGER_URL: "http://localhost"
    
### Deploy the app with Helm

    helm install local helm/{version}  

## Note:

``` lab 3 - v1, v2, v3, v4 ```  
``` lab 4 - only v3 ```

## API

Service       | Path                         |
------------- | ---------------------------- |
client        | {minikube ip}                |
token-manager | {minikube ip}/token          | 
token-factory | {minikube ip}/token-factory  |
poller        |             -                |
user-service  | {minikube ip}/user           |

