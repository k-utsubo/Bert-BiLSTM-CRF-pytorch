#!/bin/bash

if [ ! -d venv ];then
    virtualenv -p python3 venv
fi
source venv/bin/activate
pip install -r requirements.txt

if [ ! -f chinese_L-12_H-768_A-12.zip ];then
  wget https://storage.googleapis.com/bert_models/2018_11_03/chinese_L-12_H-768_A-12.zip
fi
if [ ! -d chinese_L-12_H-768_A-12 ];then
  unzip chinese_L-12_H-768_A-12.zip
fi

python main.py 
