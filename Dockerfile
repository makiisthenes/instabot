FROM python:3.14.0a3-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

VOLUME /app/examples/autopost/pics/

CMD [ "python3", "example/multi_script_CLI.py" ]
