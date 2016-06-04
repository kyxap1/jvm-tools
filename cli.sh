#!/usr/bin/env bash 
#===============================================================================
#
#          FILE: cli.sh
# 
#         USAGE: ./cli.sh ttop -s ${WF_HOST}:${WF_PORT} --user ${WF_USER} --password ${WF_PW}
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Aleksandr Kukhar (kyxap), kyxap@kyxap.pro
#       COMPANY: Fasten.com
#  ORGANIZATION: Operations
#       CREATED: 06/04/2016 13:51
#      REVISION:  ---
#===============================================================================

set -e
set -o nounset                              # Treat unset variables as an error

LANG=C

# locations
PATH="/bin:/usr/sbin:/usr/bin:/sbin:/usr/local/bin:/usr/local/sbin:$PATH"

#AR="/home/kyxap/tmp/jvm-tools/sjk-core/target/sjk-plus-0.4.2-SNAPSHOT.jar"
JAR="/home/kyxap/tmp/jvm-tools/sjk-plus/target/sjk-plus-0.4.2-SNAPSHOT.jar"

JMX_PROTO="http-remoting-jmx"
LIB_DIR="/opt/wildfly/bin/client"

java -Djmx.service.protocol=${JMX_PROTO} -Djava.ext.dirs=${LIB_DIR} -jar "$JAR" $@


