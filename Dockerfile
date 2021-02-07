FROM registry.redhat.io/ubi8/ubi

MAINTAINER Praveen Thakur <v2pkthakur@gmail.com>

RUN yum install -y git bind-utils iputils python38 iproute wget 
RUN wget https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/4.6.12/openshift-client-linux-4.6.12.tar.gz 
RUN tar -zxvf openshift-client-linux-4.6.12.tar.gz
RUN mv oc /bin/ 
