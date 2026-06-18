FROM eclipse-temurin:21-jre
RUN apt-get update && apt-get install -y --no-install-recommends curl zstd && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY target/photon-*.jar photon.jar
ENTRYPOINT ["java", "-jar", "photon.jar"]
