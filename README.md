## Проект с напоминаниями о привычках

## Документация 

* http://localhost:8000/swagger/
---

### Для настроек проекта нужно использовать переменные окружения

###### пример файла .env

```
.env.example
```

### Установить все зависимости

```python
pip install - r requirements.txt
```

### Применить все миграции

```python
python manage.py migrate 
```

### Создать админа

```python
python manage.py admin_reg
```


###### Файл для создания админа находится по пути

###### users/management/commands/admin_reg.py

---
### Запуск сервера

```python
python manage.py runserver 
```


## Запуск Celery worker
````
celery -A config worker --loglevel=info
````

## Запуск Celery Beat
```
celery -A config beat --loglevel=info
```
---
### Что-бы бот работал нужно узнать свой чат id в тг
