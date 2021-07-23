FROM docker.io/linuxserver/code-server:version-v3.11.0

RUN cd ~; \
	export DEBIAN_FRONTEND='noninteractive'; \
	npm install -g parcel-bundler; \
	npm install -g @vue/cli; \
	apt-get update; \
	apt-get install -y --no-install-recommends mc less nano wget pv zip unzip supervisor net-tools sudo inetutils-ping; \
	apt-get clean; \
	echo "Ok"
