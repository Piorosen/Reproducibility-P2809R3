# Reproducibility P2809R3

this repository is for study on my own. so, if you need information more detail than, create issue or send me via e-mail.

# Relative Issues.

1. [Official with history in open-std](https://www.open-std.org/jtc1/sc22/wg21/docs/papers/2024/p2809r3.html)
2. [Meme](https://www.reddit.com/r/ProgrammerHumor/comments/1co5fky/helloworldfromcpp/)

# How to test?

## Requirements
1. Docker

## Run

```sh
$ git clone https://github.com/Piorosen/Reproducibility-P2809R3.git
$ cd Reproducibility-P2809R3
$ ./run.sh
```

## Totally Expected Ouput in Terminal

`docker run --rm $(docker build -q .)` work equally from `run.sh`.

![](/resources/2024-05-12-01.png)

# Build Envinronment

1. Operating System ( Ubuntu 24.04 )
2. clang++ 17 (release 22)

# Run Environment

1. scratch
