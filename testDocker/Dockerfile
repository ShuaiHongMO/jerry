# 需要的下载的镜像
FROM centos

# 维护人员
MAINTAINER "18725598137@163.com"

# 制定docker 容器的工作目录
# WORKDIR /usr/local

# 将本机中的文件放入docker容器中文件的目录
ADD ./jdk_ri-8u40-b25-linux-x64-10_feb_2015.tar.gz /
COPY ./hello-world.jar /

# 在docker容器内运行的命令
# 注意 每一条RUN命令 都是独立的，目录都是从/开始
# RUN /bin/bash -c 'tar -zxvf jdk'
# RUN /bin/bash -c 'mv /java-se-8u40-ri jdk1'


ENV JAVA_HOME /java-se-8u40-ri
ENV PATH ${JAVA_HOME}/bin:$PATH 

ENTRYPOINT ["java","-jar","hello-world.jar'"]

# 容器暴露的 端口  映射端口格式为 本机端口:docker容器端口
EXPOSE 8089:80

