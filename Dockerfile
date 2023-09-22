FROM quay.io/pypa/manylinux2014_x86_64
ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH \
    RUST_VERSION=1.72.1
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > setup.sh
RUN chmod +x setup.sh
RUN ./setup.sh -y --no-modify-path --profile minimal --default-toolchain $RUST_VERSION
