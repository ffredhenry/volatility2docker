# linux mint volatility 
FROM linuxmintd/mint20.3-amd64
RUN apt update -y && apt upgrade -y
RUN apt install python2 python2-dev wget git -y

# install pip2 from pypa
RUN wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
RUN python2 get-pip.py

# pip2 setup of prereqs
RUN pip2 install --upgrade setuptools
RUN pip2 install pycrypto distorm3

# volatility install
RUN git clone https://github.com/volatilityfoundation/volatility
WORKDIR volatility
RUN python2 setup.py install

WORKDIR /userspace
