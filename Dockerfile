FROM python:3.9

WORKDIR /

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:4000", "app:app"]
