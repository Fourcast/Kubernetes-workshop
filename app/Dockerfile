FROM python:3.7.4-stretch
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . ./

EXPOSE 5000
ENTRYPOINT ["python3", "hello.py"]