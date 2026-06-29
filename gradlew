#!/bin/sh

##############################################################################
# Gradle wrapper script for UNIX
##############################################################################

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    JAVACMD="$JAVA_HOME/bin/java"
else
    JAVACMD="java"
fi

APP_HOME="$(cd "$(dirname "$0")" && pwd)"
GRADLE_WRAPPER_JAR="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"
GRADLE_WRAPPER_PROPERTIES="$APP_HOME/gradle/wrapper/gradle-wrapper.properties"

exec "$JAVACMD" \
  -classpath "$GRADLE_WRAPPER_JAR" \
  org.gradle.wrapper.GradleWrapperMain "$@"
