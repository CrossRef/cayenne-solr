FROM centos:6.4
ADD . /solr
EXPOSE 8983:8983

# Install java
RUN curl "http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25-linux-x64.rpm" > jdk.rpm
RUN rpm -Uvh jdk.rpm

CMD cd /solr; java -Xmx10g -jar start.jar