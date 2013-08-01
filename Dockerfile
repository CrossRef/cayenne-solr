FROM centos:6.4
ADD . /solr
EXPOSE 8983:8983

RUN iptables -A INPUT -p tcp --dport 8983 -j ACCEPT

RUN yum install -y java-1.7.0-openjdk 

CMD cd /solr; java -Xmx10g -jar start.jar