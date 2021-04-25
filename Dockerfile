FROM python:3.8-alpine

RUN mkdir app

# ADD requirements.txt /requirements.txt
ADD requirement.txt /requirement.txt
RUN pip install -r requirement.txt

COPY mqtt-to-kafka.py /app/mqtt-to-kafka.py

CMD ["python", "/app/mqtt-to-kafka.py"]
