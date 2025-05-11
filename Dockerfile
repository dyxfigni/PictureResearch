FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN apt-get update && apt-get install -y python3-distutils gcc && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

ENV CLOUDINARY_CLOUD_NAME=""
ENV CLOUDINARY_API_KEY=""
ENV CLOUDINARY_API_SECRET=""

EXPOSE 5000

CMD ["python", "AppTest.py"]
