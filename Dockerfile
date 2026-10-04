FROM ghcr.io/berriai/litellm:main-latest

# Copy your config file into the container
COPY config.yaml /app/config.yaml

# Expose the port Koyeb will read
EXPOSE 4000

# Start LiteLLM
CMD ["--config", "/app/config.yaml", "--port", "4000"]