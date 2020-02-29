FROM centos:7
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install nginx
EXPOSE 80/tcp
ADD index.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g daemon off;"]
