FROM eclipse-temurin:21-jdk AS builder
WORKDIR /app
COPY . .
RUN ./gradlew shadowJar --no-daemon

FROM eclipse-temurin:21-jre
RUN apt-get update && apt-get install -y --no-install-recommends zstd && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY --from=builder /app/target/photon-*.jar photon.jar
ENTRYPOINT ["java", "-jar", "photon.jar"]
