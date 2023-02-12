#!make
MAKEFLAGS += --silent --job=10

include nxe-packages/packages/nxe-devcontainer/Makefile
NxePackagesMakefile := $(NXE_MAKEFILE_DIR)/Makefile

ContainerOrgPrefix := nx-enterprise
NxeK3sServer := $(shell docker ps --format "{{.ID}} {{.Names}}" | grep "nxe-k3s-server" | cut -d " " -f2)

# read in the environment variables
environment ?= development
$(shell cp .env-$(environment) .env)
$(shell cp .env-$(environment) .devcontainer/.env)
$(shell cp .env-$(environment) $(NXE_MAKEFILE_DIR)/src/lib/.env)
include .env
export $(shell sed 's/=.*//' .env)

# trick variables
noop =
comma := ,
space = $(noop) $(noop)

# build the base first, then everything else
nxe.images.build:
	$(MAKE) -f $(NxePackagesMakefile) $@

docker.save:
	docker images  "$(ContainerOrgPrefix)/*" --format {{.Repository}}:{{.Tag}} | tr -s '\n' ' ' | xargs docker save  -o /var/lib/rancher/k3s/data/manual/nxe-images.tar
	docker exec -it $(NxeK3sServer) sh -c "ctr images import /var/lib/rancher/k3s/data/manual/nxe-images.tar"

# this will blow out your entire docker system, so be careful
docker.system.cleanup:
	docker system prune -a -f
	docker image prune -a

# leave this at the end, and leave it blank as it will force the run of it
FORCE:
