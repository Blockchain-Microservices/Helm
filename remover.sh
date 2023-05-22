eval $(minikube docker-env)
docker image rm token-factory
docker image rm poller                                               
docker image rm user-service                                         
docker image rm users-service-migrations                             
docker image rm token-manager                                        
docker image rm token-manager-migrations                             
docker image rm client                              