#!/bin/bash

# Currently this is just example of commands as to how to run the components based on our dev server layout.
# We may have to define variables for path, executable, and component names so that they are centralized
# e.g. CONF=/opt/nucleus/conf etc

# In addition we should be running tasks in no hangup mode or in background for development
# Ultimately they should be registered in upstart or systemd

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-lookup-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-lookup.xml io.vertx.core.Launcher -conf /opt/nucleus/conf/nucleus-lookup.json -cluster 

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-course-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-course.xml io.vertx.core.Launcher -conf /opt/nucleus/conf/nucleus-course.json -cluster 

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-question-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-question.xml io.vertx.core.Launcher -conf /opt/nucleus/conf/nucleus-question.json -cluster 

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-resource-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-resource.xml io.vertx.core.Launcher -conf /opt/nucleus/conf/nucleus-resource.json -cluster 

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-auth-gateway-0.1-snapshot-fat.jar: -Dvertx.metrics.options.enabled=true -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-auth-gateway.xml io.vertx.core.Launcher -conf /opt/nucleus/conf/nucleus-auth-gateway.json -cluster 

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-assessment-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-assessment.xml io.vertx.core.Launcher -conf /opt/nucleus/conf/nucleus-assessment.json -cluster 

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-server-0.1-snapshot-fat.jar: -Dvertx.metrics.options.enabled=true -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-gateway.xml  io.vertx.core.Launcher -conf /opt/nucleus/conf/nucleus-server.json -cluster 

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-auth-handlers-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-auth-handlers.xml io.vertx.core.Launcher -conf /opt/nucleus/conf/nucleus-auth-handlers.json -cluster 

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-handlers-gateway-auth-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-gateway-auth.xml io.vertx.core.Launcher -conf /opt/nucleus/conf/nucleus-auth.json -cluster 

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-class-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-class.xml io.vertx.core.Launcher -conf src/main/class/nucleus-class.json -cluster 

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-collection-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-collection.xml io.vertx.core.Launcher -conf src/main/collections/nucleus-collection.json -cluster 

java -classpath /opt/nucleus/conf:/opt/nucleus/bin/nucleus-event-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/opt/nucleus/conf/logback-event.xml io.vertx.core.Launcher -conf /opt/nucleus/conf/nucleus-event.json -cluster 




