FROM python:3.9-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "luxmedSnip.py" , "-c", "marysia.yaml", "-d", "30"]