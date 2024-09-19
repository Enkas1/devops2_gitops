1. Starta med att klona: https://github.com/Enkas1/devops2_gitops.git 
2. Klona sedan: https://github.com/Enkas1/devops2_backend.git in i gitops
3. Klona även: https://github.com/Enkas1/devops2_frontend.git in i gitops
4. Öppna därefter devops2_gitops i VSC
5. Kör följande skript
- ./runall.sh
- ./Jenkins.sh
- ./setup-minikube.sh
- ./helm.sh
- ./prometheus.sh

Extra: Vill du köra allt i docker lokalt: docker-compose up -d