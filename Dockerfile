FROM python:3.8

# ライブラリのインストール
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

# 作業ディレクトリ
WORKDIR /var/workspace

# 日本語設定
ENV PYTHONIOENCODING utf-8
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

