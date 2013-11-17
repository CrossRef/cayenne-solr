cayenne-solr
============

A configuration of Solr for the Cayenne loader / API / CrossRef Metadata Search.

## Run as master

> java -Denable.master=true -Xmx56G -jar start.jar

## Run as a replicating slave

> java -Denable.slave=true -Dmaster.url=http://somehost:8983/solr/crmds1 -Xmx56G -jar start.jar