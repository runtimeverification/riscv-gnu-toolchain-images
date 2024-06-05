ARG BASE_OS
ARG BASE_DISTRO
FROM ${BASE_OS}:${BASE_DISTRO}

RUN    apt-get update        \
    && apt-get upgrade --yes \
    && apt-get install --yes \
       autoconf              \
       automake              \
       autotools-dev         \
       curl                  \
       python3               \
       libmpc-dev            \
       libmpfr-dev           \
       libgmp-dev            \
       gawk                  \
       build-essential       \
       bison                 \
       flex                  \
       texinfo               \
       gperf                 \
       libtool               \
       patchutils            \
       bc                    \
       zlib1g-dev            \
       libexpat-dev          \
       git

ENV RISCV=/opt/riscv
ENV PATH=$PATH:$RISCV/bin

ARG TOOLCHAIN_VERSION=2024.04.12
RUN    git clone --recursive https://github.com/riscv/riscv-gnu-toolchain -b ${TOOLCHAIN_VERSION} \
    && cd riscv-gnu-toolchain                                                                     \
    && ./configure --prefix=$RISCV --enable-multilib                                              \
    && make                                                                                       \
    && cd ..                                                                                      \
    && rm -rf riscv-gnu-toolchain
