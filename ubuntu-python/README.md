# データサイエンス（統計解析）　<Python3.9 jupyterlab>

・Pystan3.1.1でgcc9が必要なため、  
　ubuntu20.04にpython3.9.5をビルド  
・別途作成した、Pythonのビルドができるubuntu環境がベース  
　　→ sueno61/ubuntu20.04-for-python（docker image）

## 日本語対応
- apt-get install fonts-ipaexfont  
- japanize-matplotlib  

## データサイエンス用ライブラリ
- numpy, pandas, openpyxl, xlrd, matplotlib, seaborn  
- scikit-learn, statsmodels  
- janome, mecab-python3, gensim  
- pystan>3, arviz, cython, nest-asynci  

## その他
- jedi==0.17.2 :ipythonとの非互換（タブ補完が機能しない）解消のため  

## （補足）ubuntu20.04-for-pythonの作成
### 　ベースイメージ
　　docker run -it ubuntu:20.04 bash    
### 　コンテナ内でインストール
　　apt-get update  
　　apt-get install sudo wget vim fonts-ipaexfont mecab mecab-ipadic-utf8 libmecab-dev swig  

　　apt update    
　　apt install build-essential libbz2-dev libdb-dev libreadline-dev libffi-dev libgdbm-dev liblzma-dev libncursesw5-dev libsqlite3-dev libssl-dev zlib1g-dev uuid-dev tk-dev  
　　apt-get clean && rm -rf /var/lib/apt/lists/*
