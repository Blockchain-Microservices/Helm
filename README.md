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

## Lab 4 tests

To test application behavior with "sick" pod you need:

1. Start app with helm
   
    ```
    helm install local helm/v3
    ```

2. Run test script with
    
   ```
    node tests/main.js
   ```

note:

``` uncomment section in tests/main.js to break pod ```  
``` maybe you will need to change minikube ip in tests/main.js ```  

### Results

With "healthy" pod: 

Average execution time: 5.09 milliseconds

With "sick" pod:

First requsts is returned with delay of 10 seconds. Then load balancer redirect requests to second pod:

Request 1: duration: 96

Request 2: duration: 7

Request 3: duration: 5

Request 4: duration: 6

Request 5: duration: 6

...

Average execution time: 5.52 milliseconds

