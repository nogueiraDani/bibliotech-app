# Usa uma imagem base com Java 21 e Maven
# FROM maven:3.9.9-openjdk-23 AS build
FROM maven:3.9.6-eclipse-temurin-21 AS builder

# Define o diretório de trabalho dentro do container
WORKDIR /bibliotech-backend

# Copia o arquivo pom.xml e baixa as dependências
COPY pom.xml .
RUN mvn dependency:go-offline 
# RUN mvn clean package -DskipTests 

# Copia o código-fonte para o container
COPY src ./src

# Compila o projeto e gera o .jar
RUN mvn clean package -DskipTests

# Usa uma imagem leve com Java 21 para rodar a aplicação
# FROM openjdk:23-jdk
FROM eclipse-temurin:21-jdk
WORKDIR /bibliotech-backend

# Copia o .jar gerado na etapa anterior
COPY --from=builder /bibliotech-backend/target/bibliotech-backend.jar bibliotech-backend.jar

# Expõe a porta 8080 (porta padrão do Spring Boot)
EXPOSE 8888

# Comando para rodar a aplicação
CMD ["java", "-jar", "bibliotech-backend.jar"]