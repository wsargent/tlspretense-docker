FROM sionsmith/oracle-java8

RUN apt-get update && apt-get install -yq vim unzip

ADD ssltest-1.0-SNAPSHOT.zip ssltest-1.0-SNAPSHOT.zip 

RUN unzip ssltest-1.0-SNAPSHOT.zip -d /opt
