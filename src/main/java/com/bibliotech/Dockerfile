# Usa uma imagem base com Java 21 e Maven
FROM maven:3.9.9-openjdk-23 AS build

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo pom.xml e baixa as dependências
COPY pom.xml .
RUN mvn dependency:go-offline

# Copia o código-fonte para o container
COPY src ./src

# Compila o projeto e gera o .jar
RUN mvn package -DskipTests

# Usa uma imagem leve com Java 21 para rodar a aplicação
FROM openjdk:23-jdk
WORKDIR /app

# Copia o .jar gerado na etapa anterior
COPY --from=build /src/target/bibliotech-backend.jar .

# Expõe a porta 8080 (porta padrão do Spring Boot)
EXPOSE 8080

# Comando para rodar a aplicação
CMD ["java", "-jar", "bibliotech-backend.jar"]