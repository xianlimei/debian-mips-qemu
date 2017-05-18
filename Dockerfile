FROM debian:jessie

RUN mkdir /project
ADD entry.sh /project/
ADD qemu-system-mips64el /project/
ADD efi-virtio.rom /project/
ADD vgabios-cirrus.bin /project/

RUN apt-get update
RUN apt-get install --yes \
      vim \
      wget \
      libglib2.0-0:amd64

WORKDIR /project
# get images from http://mipsdistros.imgtec.com/debian/qemu/
RUN wget http://mipsdistros.imgtec.com/debian/qemu/vmlinux-4.9.0-2-5kc-malta.mips64el.stretch
RUN wget http://mipsdistros.imgtec.com/debian/qemu/initrd.img-4.9.0-2-5kc-malta.mips64el.stretch
RUN wget http://mipsdistros.imgtec.com/debian/qemu/debian-stretch-mips64el.qcow2

CMD ["/project/entry.sh"]

# container username and password: root:root
