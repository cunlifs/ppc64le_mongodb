FROM registry.access.redhat.com/rhscl/mongodb-36-rhel7
MAINTAINER Stu Cunliffe,UK s_cunliffe@uk.ibm.com
ENV http_proxy http://9.196.156.29:3128
ENV https_proxy http://9.196.156.29:3128
RUN mkdir /home/mongodb && chown mongodb:mongodb /home/mongodb
EXPOSE 27017
COPY chicago_listings.csv.gz /tmp/chicago_listings.csv.gz
RUN gunzip /tmp/chicago_listings.csv.gz
COPY seed_airbnb.sh /docker-entrypoint-initdb.d/seed_airbnb.sh
RUN chmod 755 /docker-entrypoint-initdb.d/seed_airbnb.sh
USER mongodb
