# debian-mips-qemu
Docker container for MIPS 64 R2

# to build image
docker build -t TAG ./

# display docker images in the host
docker images

# to run image 
docker run -it --rm image_ID

# to run into shell
docker run -it --rm --entrypoint=/bin/bash image_ID
