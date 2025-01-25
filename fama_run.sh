#!/usr/bin/env bashio

export ENABLE_SENSOR_STATION=$(bashio::config "enable_sensor_station")
export SMART_HOME_TYPE=$(bashio::config "smart_home_type")
export HOME_ASSISTANT_DISCOVERY_PREFIX=$(bashio::config "home_assistant_discovery_prefix")

export MQTT_HOST=$(bashio::services mqtt "host")
export MQTT_PORT=$(bashio::services mqtt "port")
export MQTT_TLS_ENABLED=$(bashio::services mqtt "ssl")
export MQTT_USERNAME=$(bashio::services mqtt "username")
export MQTT_PASSWORD=$(bashio::services mqtt "password")
export MQTT_CLIENT_ID=$(bashio::config "smart_home_type")

java -jar /fama.jar
