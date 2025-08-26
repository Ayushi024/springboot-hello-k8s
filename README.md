# Hello World Spring Boot Application

This is a basic Spring Boot application generated using Spring Initializr.

---

## Prerequisites

- Java JDK 17+
- Maven
- Docker (for containerization)
- Minikube or Kubernetes cluster (for deployment)

---

## Running Locally

### Using Maven Wrapper

```bash
./mvnw spring-boot:run
The application will start on http://localhost:8080/hello.

Using Built JAR
./mvnw clean package
java -jar target/<your-jar-file>.jar

Endpoints
/hello : Returns "Hello World!"

Project Structure
src/main/java : Java source code

src/main/resources : Application resources

pom.xml : Maven build file

Dockerization
Build Docker Image
docker build -t springboot-hello-k8s .

Run Container Locally
docker run -p 8080:8080 springboot-hello-k8s

Push Docker Image to DockerHub
docker login
docker tag springboot-hello-k8s <your-dockerhub-username>/springboot-hello-k8s:1.0
docker push <your-dockerhub-username>/springboot-hello-k8s:1.0

Kubernetes Deployment

Apply Deployment
kubectl apply -f kubernetes/deployment.yaml

Check Deployment Status
kubectl get deployments
kubectl get pods

Apply Service
kubectl apply -f kubernetes/service.yaml

Access the Application (Minikube)
minikube service springboot-hello-k8s --url
Example URL:
http://127.0.0.1:30080/hello
```
### CI/CD Workflow
## GitHub Actions :                                                             
- Build JAR using Maven                                                                     
- Run SonarQube code analysis                                                                     
- Build Docker image                                                                     
- Push image to DockerHub                                                                     
- Deploy to Kubernetes                                                                     

Notes                                                                     
- Configure DockerHub credentials correctly (username + token).                                                                     
- Update deployment.yaml with the correct image name and tag.                                                                     
- For production, consider using Ingress instead of NodePort.                                                                     
