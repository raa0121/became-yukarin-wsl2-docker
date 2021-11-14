FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

RUN apt-get update && \
    apt-get install -y tzdata && \
    apt-get install -y build-essential libtiff5-dev libjpeg8-dev libopenjp2-7-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python3-tk libharfbuzz-dev libfribidi-dev libxcb1-dev ffmpeg git curl tree sox zip python3.6 python3-pip python3-llvmlite clang-9 clang-tools-9 clang-tidy-9 clang-format-9 lldb-9 lld-9 && \
    curl -LO https://gist.githubusercontent.com/junkdog/70231d6953592cd6f27def59fe19e50d/raw/92f0e73d2558402b7316021c1ab408b30e534de6/update-alternatives-clang.sh && \
    chmod +x update-alternatives-clang.sh && \
    ./update-alternatives-clang.sh 9 50 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
