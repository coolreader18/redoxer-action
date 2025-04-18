FROM rust:latest

RUN apt-get update && \
    apt-get install -y libfuse-dev qemu-system-x86 rsync && \
    rm -rf /var/lib/apt/lists
RUN cargo install redoxer
RUN redoxer toolchain

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
