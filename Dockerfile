FROM solr:6

COPY ./solr/crmds1 /opt/solr-core-crmds1

RUN mkdir -p /opt/solr/server/solr/crmds1
RUN cp -r /opt/solr-core-crmds1/* /opt/solr/server/solr/crmds1

