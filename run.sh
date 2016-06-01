#!/bin/bash

# Currently this is just example of commands as to how to run the components based on our dev server layout.
# We may have to define variables for path, executable, and component names so that they are centralized
# e.g. CONF=/home/gooruapp/nucleus/deploy/conf etc

# In addition we should be running tasks in no hangup mode or in background for development
# Ultimately they should be registered in upstart or systemd

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-lookup-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-lookup.xml io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-lookup.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &


( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-course-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-course.xml io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-course.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-question-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-question.xml io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-question.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-resource-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-resource.xml io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-resource.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &


( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-assessment-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-assessment.xml io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-assessment.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &


( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-auth-handlers-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-auth-handlers.xml io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-auth-handlers.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-handlers-gateway-auth-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-gateway-auth.xml io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-auth.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-class-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-class.xml io.vertx.core.Launcher -conf src/main/class/nucleus-class.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-collection-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-collection.xml io.vertx.core.Launcher -conf src/main/collections/nucleus-collection.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-event-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-event.xml io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-event.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-taxonomy-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-taxonomy.xml  io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-taxonomy.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-auth-gateway-0.1-snapshot-fat.jar: -Dvertx.metrics.options.enabled=true -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-auth-gateway.xml io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-auth-gateway.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-server-0.1-snapshot-fat.jar: -Dvertx.metrics.options.enabled=true -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-gateway.xml  io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-server.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-media-0.1-snapshot-fat.jar: -Dvertx.metrics.options.enabled=true -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-media.xml  io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-media.json >> startup.log 2>&1 ) &


( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-utils-0.1-snapshot-fat.jar: -Dvertx.metrics.options.enabled=true -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-utils.xml  io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-utils.json >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-converter-0.1-snapshot-fat.jar: -Dvertx.metrics.options.enabled=true -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-converter.xml  io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-converter.json >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-copier-0.1-snapshot-fat.jar: -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory -Dlogback.configurationFile=/home/gooruapp/nucleus/deploy/conf/logback-copier.xml  io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-copier.json -cluster -cluster-host 10.198.56.137  >> startup.log 2>&1 ) &

( nohup java -classpath /home/gooruapp/nucleus/deploy/conf:/home/gooruapp/nucleus/deploy/bin/nucleus-download-reports-0.1-snapshot-fat.jar: -Dvertx.metrics.options.enabled=true -Dvertx.logger-delegate-factory-class-name=io.vertx.core.logging.SLF4JLogDelegateFactory io.vertx.core.Launcher -conf /home/gooruapp/nucleus/deploy/conf/nucleus-download-reports.json  >> startup.log 2>&1 ) &
