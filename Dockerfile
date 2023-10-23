# ベースイメージを指定
FROM jupyter/datascience-notebook:latest

RUN /opt/conda/bin/python -m ipykernel install --user --name=conda_python

# requirements.txtをコンテナにコピー
COPY requirements.txt /tmp/

# requirements.txtに記載されたパッケージをインストール
RUN pip install --requirement /tmp/requirements.txt
