FROM openjdk:17
EXPOSE 8080
ADD target/springboot-k8s-proj.jar springboot-k8s-proj.jar
ENTRYPOINT ["java","-jar","/springboot-k8s-proj.jar"]

#Démarrer minikube avec une docker
 #minikube start --driver=docker
 #minikube status
 #kubectl cluster-info
 #kubectl get node
 ##Déployer une application spring boot sur kubernete
 #minikube docker-env
 # @FOR /f "tokens=*" %i IN ('minikube -p minikube docker-env --shell cmd') DO @%i
 #docker images
 ##Copier le chemin du projet
 #C:\Users\Ibrahima\Desktop\DevOps23\kubernetes\springboot-k8s-example>
 ##Pour générer l'image de docker
 #docker build -t springboot-k8s-proj:1.0 .
 ##Créer un objet de déploiement
 #kubectl create deployment spring-boot-k8s --image=springboot-k8s-proj:1.0 --port=8080
 ##Vérifier le déploiement
 #kubectl get deployments
 ##Pour afficher les détails du déploiement
 #kubectl describe deployment spring-boot-k8s
 ##Pour déterminer le pods utiliser
 #kubectl get pods
 ##Pour loger le pods
 #kubectl logs spring-boot-k8s-7c9884547b-n8snp
 ##Pour exposer le port
 #kubectl expose deployment spring-boot-k8s --type=NodePort
 ##Vérifier les services exposés
 #kubectl get service
 ##définir l'url du service pour accéder à notre endpoint
 #minikube service spring-boot-k8s --url
 ##Afficher le dashboard de minikube
 #minikube dashboard
 ##Supprimer les services crées
 #kubectl delete service spring-boot-k8s
 ##Supprimer les déploiements crées
 #kubectl delete  deployment spring-boot-k8s
 ##Pour arrêter minikube
 #minikube stop
 ##Vérifier s'il y a un minikube démarrer
 #Kubectl get nodes