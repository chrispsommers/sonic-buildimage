# docker base image

DOCKER_BASE = docker-base.gz
$(DOCKER_BASE)_PATH = $(DOCKERS_PATH)/docker-base
$(DOCKER_BASE)_DEPENDS += $(BASH)
$(DOCKER_BASE)_DEPENDS += $(SOCAT)

ifeq ($(INSTALL_DEBUG_TOOLS),y)
GDB = gdb
GDBSERVER = gdbserver
VIM = vim
OPENSSH = openssh-client
SSHPASS = sshpass
STRACE = strace
BINUTILS = binutils # readelf, nm, etc.
#LINUX_HDRS = linux-headers-5.10.0-10-amd64 linux-headers-5.10.0-10-common linux-headers-amd64
BPF_TOOLS = bpfcc-tools bpftrace bpftool
$(DOCKER_BASE)_DBG_PACKAGES += $(GDB) $(GDBSERVER) $(VIM) $(OPENSSH) $(SSHPASS) $(STRACE) \
	$(BINUTILS) $(LINUX_HDRS) $(BPF_TOOLS)

endif

SONIC_DOCKER_IMAGES += $(DOCKER_BASE)
