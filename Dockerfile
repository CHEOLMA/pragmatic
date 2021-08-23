FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/noeul1114/pragmatic.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-3aj%_!(_m6yetckwnh@17)o4rmcrfo7-=r+tvms0gna0+8whn5" > .env

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py collectstatic --noinput --settings=pragmatic.settings.deploy && python manage.py migrate --settings=pragmatic.settings.deploy && gunicorn pragmatic.wsgi --env DJANGO_SETTINGS_MODULE=pragmatic.settings.deploy --bind 0.0.0.0:8000"]
