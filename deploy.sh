sudo apt update && sudo apt install docker.io --yes && sudo apt install docker-compose --yes
sudo apt install nodejs --yes
sudo apt install npm --yes
cd DockerYML
cd backend
sudo docker build . --tag backend:latest
cd ..
cd frontend
npm run build 
sudo docker build . --tag ui:latest
cd ..
sudo docker-compose up
