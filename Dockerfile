FROM jeko/airbuild
RUN apt-get update && apt-get install -y xvfb --no-install-recommends && rm -rf /var/lib/apt/lists/*
COPY docker-entry.sh /docker-entry.sh
