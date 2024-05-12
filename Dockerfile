FROM ubuntu:24.04 AS builder

WORKDIR /work
RUN apt update && \
    apt install clang-17 -y && \
    rm -rf /var/lib/apt/lists/*

COPY main.cc main.cc
RUN clang++-17 -O3 ./main.cc -o main -static -std=c++17

FROM scratch
COPY --from=builder /work/main ./main
CMD [ "/main" ]
