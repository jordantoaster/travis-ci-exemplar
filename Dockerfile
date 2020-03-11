FROM python:3.6
WORKDIR /app
COPY src .
RUN pip install -r requirements.txt
CMD [ "python", "./main.py" ]