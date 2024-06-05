# RISC-V GNU Toolchain Images
Publishes a pre-built Ubuntu Jammy Docker image containing the [RISC-V GNU Compiler Toolchain](https://github.com/riscv-collab/riscv-gnu-toolchain) for use by [https://github.com/runtimeverification/riscv-semantics](https://github.com/runtimeverification/riscv-semantics).

The resulting image `runtimeverificationinc/riscv-gnu-toolchain:ubuntu-jammy-${VERSION}` contains the toolchain binaries under `/opt/riscv/bin` and is built with the Newlib `--multilib` configuration, where `${VERSION}` is specified in [version](https://github.com/runtimeverification/riscv-gnu-toolchain-images/blob/master/version).
