#!/bin/bash


ARG1=$1
# setting default, simulation of CMD ["console"] in Dockerfile
if [ -z ${ARG1} ]; then
        echo -n "setting default start arg to "
        ARG1="run"
        echo $ARG1
fi

echo "starting this container with ${ARG1}"

case "$ARG1" in
        "run")
		echo "try to start jackrabbit with java $JAVA_OPTS -jar ${JACKRABBIT_HOME}/jackrabbit-standalone-${JACKRABBIT_VERSION}.jar" \
		&& java $JAVA_OPTS -jar ${JACKRABBIT_HOME}/jackrabbit-standalone-${JACKRABBIT_VERSION}.jar
        ;;
        "bash")
                echo "entering bash mode" \
                && /bin/bash
        ;;
esac
