
$(eval CONTAINER_ID := $(shell podman ps -a | grep qt5 | awk '{ print $$1 }'))

all:
ifeq ($(CONTAINER_ID),)
	podman build -f ContainerFile-qt5.dockerfile -t qt5 .
	podman run -it \
		--name qt5 \
		-e DISPLAY \
		-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
		--device /dev/dri \
		--device /dev/snd \
		--ipc=host \
		--userns keep-id \
		-u ${USER} \
		qt5
else
	podman start -ia $(CONTAINER_ID)
endif
