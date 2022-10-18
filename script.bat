echo "Criando as imagens..."

docker build -t denilsonbonatti/projeto-backend:1.0 backend/.
docker build -t denilsonbonatti/projeto-database:1.0 database/.

echo "Realizando o push das imagens..."

docker build -t denilsonbonatti/projeto-backend:1.0 backend/.
docker build -t denilsonbonatti/projeto-database:1.0 database/.

echo "Criando os serviços no cluster kubernetes..."

kubectl apply -f ./services.yaml

echo "Criando os deployments no cluster kubernetes..."

kubectl apply -f ./deployment.yaml