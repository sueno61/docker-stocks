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