# anacondaベース ディープラーニング環境（jupyterlab）

## ベース
- ubuntu:20.04  
- Anaconda3-2020.11 (python3.8)  

## 日本語対応
- apt-get install fonts-ipaexfont  
- japanize-matplotlib  

## パーッケージ
- pandas-profiling  
- tensorflow, keras  
- torch, torchvision  

### docker-compose.yaml サンプル
version: "3"  
  
services:  
  notebook:  
    image: sueno61/anaconda-python  
    container_name: anaconda-ds  
    ports:  
      - 8888:8888  
    volumes:  
      - (your project path):/work  
    working_dir: /work  
    # command: jupyter lab --ip=0.0.0.0 --allow-root --LabApp.token=''  
    command: jupyter notebook --notebook-dir=/work --ip=0.0.0.0 --allow-root --NotebookApp.token='' --no-browser  
