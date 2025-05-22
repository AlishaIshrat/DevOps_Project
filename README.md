First I get the code from the internet. Simple file using HTML, CSS and JavaScript.
Then I created the Dockerfile and run the command for creating docker image

Run this command nside the folder name DevProject
```javascript
docker build -t my-web-app .
```
This command gives a image a name 
And . means my file is in current directory.
For running the container, command used:
```javascript
docker run -d -p 8080:80 my-web-app
```
Then I open http://localhost:8081 and yes my visually attractive app is running.
After this I pushed My image on the docker hub using the commands
Firstly I tag my image 
```javascript
docker tag my-web-app yourdockerhubusername/my-web-app
```
Then I login into docker
```javascript
docker login
```
And at last I pushed my image on docker hub
```javascript
docker push yourdockerhubusername/my-web-app
```

JENKINS SET UP

First we pull the Jenkins image with the command
```javascript
docker pull jenkins/jenkins:lts
```

Create the Jenkins container
```javascript
docker run -d -p 8080:8080 -p 50000:50000 --name jenkins2 -v C:\Users\Lenovo\jenkins_home:/var/jenkins_home jenkins/Jenkins
```




For getting the admin password run this command in Command Peompt:
```javascript
docker exec jenkins2 cat /var/jenkins_home/secrets/initialAdminPassword
```

Copy the password after running the above command and paste it in the Jenkins set up page at:
```javascript
http://localhost:8080
 ```



Next, set Admin user name and email after that choose “Install Suggested Puligins”.
 
Select Finish and start using your Jenkins.
 


To stop the Jenkins command used:
```javascript
docker stop jenkins2
```
To start the Jenkins command used:
```javascript
docker start jenkins2
```
To see running container command used:
```javascript
docker ps
```
To see all the running containers command used:
```javascript
docker ps -a
```
My Jenkins data is stored in the docker volume. To locate it the command used:
```javascript
docker volume inspect jenkins_home
```
Jenkins data is stored on windows file system.To inspect it at 
```javascript
C:\Users\Lenovo\jenkins_home
```

MINIKUBE 

To reopen and resume working with Minikube and Kubernetes, follow these steps after restarting your machine or closing your terminal:
________________________________________
✅ 1. Start Minikube
Open your terminal and run:
bash
CopyEdit
minikube start
This will start your Minikube cluster and all the Kubernetes components inside it (like the API server, controller, scheduler, etc.).
________________________________________
✅ 2. Check Status
Verify everything is up and running:
bash
CopyEdit
kubectl get pods
If your pod is running, you’ll see something like:
sql
CopyEdit
NAME     READY   STATUS    RESTARTS   AGE
webapp   1/1     Running   0          1h
________________________________________
✅ 3. Access the App (if needed)
To get the URL for your service:
bash
CopyEdit
minikube service webapp-service
It will open the app in your browser or give you a link.
________________________________________
✅ Notes:
•	Yes, Kubernetes runs inside Minikube. Minikube creates a local Kubernetes cluster using a VM or container.
•	You do not need to reinstall or reapply YAML unless the pod was deleted or the VM was reset.

The cloud infrastructue I used is vercel and you can acess my website here
```javascript
https://dev-ops-project-two.vercel.app/
```

# DevOps_Project
