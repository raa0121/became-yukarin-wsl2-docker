# became-yukarin-wsl2-docker
Windows11 では、WSL2 の docker 上から cuda を通して、GPUを利用できるため、
[become-yukarin](https://github.com/hiroshiba/become-yukarin) をWSL2から実行する

## ビルド方法
Windows11 上の WLS2 で行います
```bash
docker build -t libyukarin-dev .
./setup.sh
```
