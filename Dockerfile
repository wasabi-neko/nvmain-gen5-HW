FROM ubuntu:18.04

RUN apt update && apt upgrade -y
RUN apt install -y sudo git

# RUN echo "user:pass" | chpasswd
RUN useradd -m -p pass user
RUN usermod -aG sudo user

# login as user
RUN su user && cd
RUN mkdir -p github/installation && cd ./github/installation
RUN git clone https://github.com/wasabi-neko/MyLinuxSetup.git
# you can install zsh&powerlevel10k later

# nvmain
RUN sudo apt install -y build-essential git m4 scons zlib1g zlib1g-dev libprotobuf-dev protobuf-compiler libprotoc-dev libgoogle-perftools-dev python3-dev python3-six python libboost-all-dev pkg-config
RUN mkdir ~/project && cd ~/project
# RUN wget -O gem5.tar.gz wget https://gem5.googlesource.com/public/gem5/+archive/525ce650e1a5bbe71c39d4b15598d6c003cc9f9e.tar.gz
# RUN mkdir ./gem5 && cd ./gem5
# RUN tar zxvf gem5.tar.gz
# RUN scons ./build/X86/gem5.opt -j 10
# RUN cd ~/project
# RUN git clone https://github.com/SEAL-UCSB/NVmain
# 
# # TODO: edit sConscript 
# RUN cd ~/project/NVmain && scons --build-type=fast
# # TODO add code in gem5/configs/common/Options.py:133
# # TODO redo the commend sConsscript
# RUN cd ~/project/gem5 && scons EXTRAS=../NVmain build/X86/gem5.opt
