# Etape 1 : Choisir une image de base Java
FROM eclipse-temurin:17-jdk-jammy

# Etape 2 : Definir le repertoire de travail
WORKDIR /app

# Etape 3 : Copier le JAR genere dans le conteneur
COPY target/springdocker-0.0.1-SNAPSHOT.jar app.jar

# Etape 4 : Exposer le port de l'application
EXPOSE 8080

# Etape 5 : Lancer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
