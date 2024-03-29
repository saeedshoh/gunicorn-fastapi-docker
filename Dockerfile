# 
FROM python:3.9

# 
WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade -r requirements.txt

RUN apt-get update \
    && apt-get install -y curl \
    && apt-get install -y telnet

# 
COPY ./app ./app


# 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8002", "--reload"]