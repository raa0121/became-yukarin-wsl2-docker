#!/bin/bash
set -ex

echo 'install python librares'
docker run --gpus all --rm -it -v $(pwd):/root/deep_yukarin libyukarin-dev:latest \
  bash -c 'cd /root/deep_yukarin && pip3 install numpy===1.16.2 && pip3 install -r requirements.txt'

echo 'clone require repos'
git clone https://github.com/hiroshiba/become-yukarin
git clone https://github.com/hiroshiba/yukarin
git clone https://github.com/YoshikazuOota/balance_sentences
git clone https://bitbucket.org/YoshikazuOota/yukarin-tools

echo 'create dat dirs'

mkdir -p 1st_models_by/yukari/npy_pair/{own,target} \
         1st_models_y/yukari/{aligned_index,aligned_wav,npy_pair,statistics} \
         2nd_models_by/yukari \
         input \
         output \
         voice_src/voice_{240,441}00/{yukarin_pair/{own,target},yukarin_single}
