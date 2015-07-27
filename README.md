cayenne-solr
============

A configuration of Solr for the Cayenne loader / API / CrossRef Metadata Search.

## Run as master

> java -Denable.master=true -Xmx12G -jar start.jar

## Run as a replicating slave

> java -Denable.slave=true -Dmaster.url=http://somehost:8983/solr/crmds1 -Xmx12G -jar start.jar

## Environment

`ulimit -v` and `ulimit -m` should report `unlimited`. `ulimit -n` shoul be large, at least
`30,000`.

Leave a large amount of RAM unallocated and thus available for OS disk cache. At least 50%
of the index size.


