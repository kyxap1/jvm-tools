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

JAR="/opt/jvm-tools/sjk-plus-0.4.2-SNAPSHOT.jar"

JMX_PROTO="http-remoting-jmx"
WF_HOME="/opt/wildfly"
LIB_DIR="${WF_HOME}/bin/client"

java -Djmx.service.protocol=${JMX_PROTO} -Djava.ext.dirs=${LIB_DIR} -jar "$JAR" $@


