FROM rust:latest

RUN curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash

RUN apt-get update && \
    apt-get install -y libfuse-dev qemu-system-x86 rsync && \
    rm -rf /var/lib/apt/lists
RUN cargo binstall -y redoxer
RUN redoxer toolchain

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
