FROM python:3.10-slim

# Устанавливаем зависимости
RUN apt update && apt install -y build-essential libpq-dev

# Создаём рабочую директорию
WORKDIR /app

# Копируем зависимости проекта
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем исходный код проекта
COPY . .

# Указываем переменную среды для Django
ENV PYTHONUNBUFFERED 1

# Команда по умолчанию
CMD ["gunicorn", "habits_tracker.wsgi:application", "--bind", "0.0.0.0:8000"]