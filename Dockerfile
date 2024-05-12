FROM ubuntu:24.04 AS builder

LABEL org.opencontainers.image.source=https://github.com/Piorosen/Reproducibility-P2809R3
LABEL org.opencontainers.image.licenses=MIT
LABEL org.opencontainers.image.authors="JooHyoung Cha"
LABEL org.opencontainers.image.description="reproducibility test about p2809r3, by docker and llvm17"

WORKDIR /work
RUN apt update && \
    apt install clang-17 -y && \
    rm -rf /var/lib/apt/lists/*

COPY main.cc main.cc
RUN clang++-17 -O3 ./main.cc -o main -static -std=c++17

FROM scratch
COPY --from=builder /work/main ./main
CMD [ "/main" ]
