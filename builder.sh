eval $(minikube docker-env)


cd TokenManager/
docker build -t token-manager-migrations -f src/db/migrations/Dockerfile .
docker build -t token-manager:latest -f Dockerfile .
cd ..

cd UserService/
docker build -t users-service-migrations -f src/main/resources/db/migration/Dockerfile .
docker build -t user-service:latest -f Dockerfile .
cd ..

cd Frontend
docker build -t client:latest -f Dockerfile .
cd ..
cd TokenFactory
docker build -t token-factory:latest -f Dockerfile .
cd ..
cd BlockchainPoller
docker build -t poller:latest -f Dockerfile .
cd ..
