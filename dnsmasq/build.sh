docker buildx build --platform linux/arm/v7 . -t mbrancato/armv7-addon-dnsmasq:1.3 --build-arg "BUILD_FROM=$(jq --raw-output ".build_from.armv7 // empty" "build.json")"
docker buildx build --platform linux/arm/v7 . -t mbrancato/armhf-addon-dnsmasq:1.3 --build-arg "BUILD_FROM=$(jq --raw-output ".build_from.armhf // empty" "build.json")"
docker buildx build --platform linux/arm64 . -t mbrancato/aarch64-addon-dnsmasq:1.3 --build-arg "BUILD_FROM=$(jq --raw-output ".build_from.aarch64 // empty" "build.json")"
docker buildx build --platform linux/amd64 . -t mbrancato/amd64-addon-dnsmasq:1.3 --build-arg "BUILD_FROM=$(jq --raw-output ".build_from.amd64 // empty" "build.json")"
docker buildx build --platform linux/386 . -t mbrancato/i386-addon-dnsmasq:1.3 --build-arg "BUILD_FROM=$(jq --raw-output ".build_from.i386 // empty" "build.json")"

docker push mbrancato/armv7-addon-dnsmasq:1.3
docker push mbrancato/armhf-addon-dnsmasq:1.3
docker push mbrancato/aarch64-addon-dnsmasq:1.3
docker push mbrancato/amd64-addon-dnsmasq:1.3
docker push mbrancato/i386-addon-dnsmasq:1.3
