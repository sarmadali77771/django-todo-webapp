FROM python:3.12

WORKDIR /data

RUN pip install --upgrade pip

RUN pip install --upgrade setuptools

RUN pip install django==3.2

COPY . .

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]


