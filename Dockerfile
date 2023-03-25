FROM python:3.9.16

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

CMD ["python", "canedge_datasource_cli.py", "file:///app/LOG", "--port", "80"]
