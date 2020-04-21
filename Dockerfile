FROM python:3.6-slim

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install --no-cache-dir -U pip
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 80
ENV PYTHONUNBUFFERED=1
CMD ["python", "-u", "LargeLossController.py"]
