# became-yukarin-wsl2-docker

## ビルド方法
Windows11 上の WLS で行います
```sh
docker build -t libyukarin-dev .
docker run --gpus all --rm -it -v $(pwd):/root/deep_yukarin libyukarin-dev bash -c 'cd deep_yukarin && pip3 install numpy===1.16.2 && pip install -r requirements.txt' 
```
