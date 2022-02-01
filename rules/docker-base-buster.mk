# Docker base image (based on Debian Buster)

DOCKER_BASE_BUSTER = docker-base-buster.gz
$(DOCKER_BASE_BUSTER)_PATH = $(DOCKERS_PATH)/docker-base-buster

$(DOCKER_BASE_BUSTER)_DEPENDS += $(SOCAT)

GDB = gdb
GDBSERVER = gdbserver
VIM = vim
OPENSSH = openssh-client
SSHPASS = sshpass
STRACE = strace
#[cs]
BINUTILS = binutils
$(DOCKER_BASE_BUSTER)_DBG_IMAGE_PACKAGES += $(GDB) $(GDBSERVER) $(VIM) $(OPENSSH) $(SSHPASS) $(STRACE) $(BINUTILS)

SONIC_DOCKER_IMAGES += $(DOCKER_BASE_BUSTER)
SONIC_BUSTER_DOCKERS += $(DOCKER_BASE_BUSTER)
