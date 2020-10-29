# need docker and docker-machine installed.

# docker-machine create --driver=virtualbox <name>

# docker build -t <name> ..

# docker run --rm -v $PWD:/pwd --cap-add=SYS_PTRACE --security-opt seccomp=unconfined ctf -d -it <name>

# docker exec -it <name> /bin/bash


## / ! \ remove apt-get install and add what you need

FROM ubuntu:19.10

ENV LC_CTYPE C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
RUN dpkg --add-architecture i386 && \
	apt-get update && \
	apt-get install -y build-essential nasm python tshark strace ltrace curl wget man john gcc vim gdb gdb-multiarch python3 python-pip libssl-dev git make python3-pip && \
	pip install pwntools && \
	pip3 install pwntools && \
	mkdir tools && cd tools && \
	git clone https://github.com/radare/radare2 && cd radare2 && sys/install.sh && \
	cd .. && git clone https://github.com/pwndbg/pwndbg && cd pwndbg && git checkout stable && ./setup.sh
