1. Generate the template using Spring Initializr, in this example, we are using java 17 and maven. Its needed to create the controller to expose the endpoint 

2. In the CI pipeline, we run the build and package which will generate the .jar file which it will be used in the Dockerfile

3. Dockerfile its automatically uploaded to DockerHub as public registry (In this case we could use Nexus, or some internal registry, even Azure Container Registry). The tag is equal to the number of the commit and also creates one tag "latest"

4. Since we dont have an static infraestructure or cloud provider, to run it automatically, we use the github runner virtual machines provided for the pipelines. We installed the dependencies, then takes the manifests in another repo for the deployment and services (this manifest uses the docker image from the registry) and raises a minikube to simulate a kubernetes cluster lightweight, where we run hello-devops exposing the endpoint 
