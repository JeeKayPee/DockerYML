sudo apt update && sudo apt install docker.io --yes && sudo apt install docker-compose --yes
sudo apt install nodejs --yes
sudo apt install npm --yes
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install v18.17.0
cd backend
sudo docker build . --tag backend:latest
cd ..
cd frontend
npm install
npm run build 
sudo docker build . --tag ui:latest
cd ..
sudo docker-compose up
