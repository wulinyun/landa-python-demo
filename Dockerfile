#基于的基础镜像
FROM python:3.4
#FROM 10.128.1.201/system_containers/python:2.7.14-slim-stretch-flask

#代码添加到code文件夹
ADD ./docker_test /code

# 设置code文件夹是工作目录
WORKDIR /code

# 安装支持
RUN pip install -r requirements.txt

CMD ["python", "/code/zhtrust_mock.py"]