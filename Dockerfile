FROM python:3.9-slim-bullseye
COPY . . 
RUN pip install -r requirements.txt 
VOLUME /my_volume
CMD ["python3", "app.py"]