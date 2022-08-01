FROM quay.io/pypa/manylinux2014_x86_64
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > setup.sh
RUN chmod +x setup.sh
RUN ./setup.sh -y