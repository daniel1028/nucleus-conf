nucleus-conf
============

This repository stores the base files for the configuration. It will include the clustering configuration as well as logging configuration. 

The clustering configuration is per cluster and logging information is per component.

Note that while running the individual component the specific logging file names needs to be passed on as command line option. 

Example: For logback we need to run the component as:

> java -Dlogback.configurationFile=/path/to/config.xml org.gooru.components.Component

Note that currently there is no switch to rename cluster.xml to something else, hence while deployment cluster-*.xml files need to be renamed as cluster.xml per cluster.


