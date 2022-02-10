# Docker base image (based on Debian Stretch)

DOCKER_BASE_STRETCH = docker-base-stretch.gz
$(DOCKER_BASE_STRETCH)_PATH = $(DOCKERS_PATH)/docker-base-stretch
$(DOCKER_BASE_STRETCH)_DEPENDS += $(SOCAT)

GDB = gdb
GDBSERVER = gdbserver
VIM = vim
OPENSSH = openssh-client
SSHPASS = sshpass
STRACE = strace
BINUTILS = binutils # readelf, nm, etc.
#LINUX_HDRS = linux-headers-5.10.0-10-amd64 linux-headers-5.10.0-10-common linux-headers-amd64
BPF_TOOLS = bpfcc-tools bpftrace bpftool
$(DOCKER_BASE_STRETCH)_DBG_IMAGE_PACKAGES += $(GDB) $(GDBSERVER) $(VIM) $(OPENSSH) $(SSHPASS) $(STRACE) \
	$(BINUTILS) $(LINUX_HDRS) $(BPF_TOOLS)

SONIC_DOCKER_IMAGES += $(DOCKER_BASE_STRETCH)
SONIC_STRETCH_DOCKERS += $(DOCKER_BASE_STRETCH)
