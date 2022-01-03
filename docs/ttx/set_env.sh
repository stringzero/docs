#!/usr/bin/env bash

# VERSION 1.3
# APP Base 目录, `/` 结尾
export APP_HOME=/home/ttx/app/

# ###########################

# tomcat实例目录
export CATALINA_HOME="$APP_HOME/tomcat"
# 可选
# export JVM_OPTIONS="-Xms128m -Xmx1024m -XX:PermSize=128m -XX:MaxPermSize=512m"

# JAVA HOME
export JAVA_HOME=$APP_HOME/jre
export CATALINA_OPTS="-server -Xms2g -Xmx2g -XX:MaxDirectMemorySize=1g -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/home/ttx/app/heapDump -Dfile.encoding=UTF8"