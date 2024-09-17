# Chọn base image Python 3.9
FROM python:3.11-slim

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép requirements.txt và cài đặt các thư viện
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Sao chép mã nguồn ứng dụng vào container
COPY . .

# Chạy ứng dụng FastAPI với Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
