FROM eclipse-temurin:21-jre
# BM CUSTOM CODE: zstd added for import script (curl | zstd -d -c | java); curl was already here
RUN apt-get update && apt-get install -y --no-install-recommends curl zstd && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY target/photon-*.jar photon.jar
ENTRYPOINT ["java", "-jar", "photon.jar"]
