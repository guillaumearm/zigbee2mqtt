docker buildx build \
    --build-arg COMMIT=$(git rev-parse --short HEAD) \
    --platform linux/arm64/v8,linux/386,linux/amd64,linux/arm/v6,linux/arm/v7 \
    -f docker/Dockerfile \
    --provenance=false \
    -t guillaumearm/zigbee2mqtt:next \
  .

