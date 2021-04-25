FROM python:3.8-alpine

RUN mkdir app

# ADD requirements.txt /requirements.txt
ADD req.txt /req.txt
RUN pip install -r req.txt

COPY mqttToKafka.py /app/mqttToKafka.py

CMD ["python", "/app/mqttToKafka.py"]
