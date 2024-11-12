FROM python:3.11-alpine

RUN mkdir project/
WORKDIR project/
COPY requirements.txt .
COPY app/ app/
RUN pip install -r requirements.txt
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

