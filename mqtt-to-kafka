import paho.mqtt.client as mqtt
from json import dumps
import json
import time
from kafka import KafkaProducer

serverKafka="Your Kafka Broker String"

server="Your MQTT Broker String"

producer = KafkaProducer(bootstrap_servers=[serverKafka])


# The callback for when the client receives a CONNACK response from the server.
def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))

    # Subscribing in on_connect() means that if we lose the connection and
    # reconnect then subscriptions will be renewed.
    client.subscribe("outTopic")

# The callback for when a PUBLISH message is received from the server.
def on_message(client, userdata, msg):
    producer.send('topic_test', msg.payload)
    print(msg.topic+" "+str(msg.payload))

client = mqtt.Client()
client.on_connect = on_connect
client.on_message = on_message

client.connect(server, 1883, 60)

client.loop_forever()
