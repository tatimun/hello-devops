# Usar una imagen base de Java
FROM openjdk:17-jdk-alpine

# Crear un directorio para la aplicación
WORKDIR /app

# Copiar el .jar generado al directorio del contenedor
COPY target/hello-devops-0.0.1-SNAPSHOT.jar /app/hello-devops.jar

# Comando para ejecutar el .jar
ENTRYPOINT ["java", "-jar", "/app/hello-devops.jar"]
