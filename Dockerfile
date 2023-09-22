## 项目base镜像文件
#FROM python:3.11
FROM al6nlee/base-python3.11:v0.2

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone && pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/
ADD . /opt/DRF/
RUN pip install -r /opt/DRF/requirements.txt && pip install uwsgi
WORKDIR /opt/DRF/
EXPOSE 8000
ENV PROJECT_ENV prod
ENV DJANGO_SETTINGS_MODULE DRF.settings
