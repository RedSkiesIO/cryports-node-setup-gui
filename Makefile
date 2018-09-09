.PHONY: dbuild-cryptos-opennode-setup-gui-noarch
dbuild-cryptos-opennode-setup-gui-noarch:
	docker run \
		-e CARCH=noarch \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		registry.gitlab.engr.atlas:443/cryptos/docker-build:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c -f -P"

.PHONY: dbuild-cryptos-opennode-setup-gui-x8664
dbuild-cryptos-opennode-setup-gui-x8664:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		registry.gitlab.engr.atlas:443/cryptos/docker-build:x8664 \
		sh -c "cd cryptos/src && abuild checksum && abuild -R -c -f"

.PHONY: dbuild-cryptos-opennode-setup-gui-armhf
dbuild-cryptos-opennode-setup-gui-armhf:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		registry.gitlab.engr.atlas:443/cryptos/docker-build:armhf \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"

.PHONY: dbuild-cryptos-opennode-setup-gui-aarch64
dbuild-cryptos-opennode-setup-gui-aarch64:
	docker run \
		-v ${PWD}:/home/builder/cryptos/src \
		-v ${KEY_DIR}:/home/builder/.abuild \
		-v ${PACKAGES_DIR}:/home/builder/packages \
		registry.gitlab.engr.atlas:443/cryptos/docker-build:aarch64 \
		sh -c "cd cryptos/src && abuild checksum && abuild -c"
