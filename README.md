# academia-web-python

## Instalación de librerías en el sistemas operativo

sudo apt-get update

sudo apt-get install python-dev

sudo apt-get install python-setuptools

sudo apt-get install postgresql

sudo apt-get install postgresql-server-dev-9.3

## Instalación de librerías de python en todo el SO

sudo easy_install pip

sudo pip install virtualenv

## Creación de entornos virtuales

virtualenv /ruta/nombre_entorno

source /ruta/nombre_entorno/bin/activate

deactivate

## Instalación de librerías en un entornos (virtualenv)

pip install psycopg2

pip install django==1.8

pip install ipython
 
## Creación de un proyecto en Django

1. django-admin.py startproject miproyecto	
2. configurar toda la base ....
3. python manage.py migrate
4. python manage.py startapp colegio
5. crear el modelado de la nueva aplicación
6. agregar la app en el settings.py

7. python manage.py makemigrations colegio
8. python manage.py migrate

9. python manage.py shell (se puede hacer ya las pruebas en el shell)
10. python manage.py createsuperuser  
11. python manage.py runserver   (en el navegador http://127.0.0.1:8000/admin)
12. agregar las clases en el admin
13. python manage.py runserver 

## Comandos adicionales uso de django

Change your models (in models.py).

Run python manage.py makemigrations to create migrations for those changes

Run python manage.py migrate to apply those changes to the database.

django-admin startproject proyecto1

python manage.py startapp aplicacion1

python manage.py sqlmigrate aplicacion1 0001  #solo muestra el sql



## Uso de comando postsgres 

1. sudo -i -u postgres
2. psql
3. create database base_miproyecto with owner=duenio;
4. \q
5. exit
6. psql -h localhost -U duenio base_miproyecto;


## Uso del comando inspectdb

python manage.py inspectdb

python manage.py  migrate

## Uso del comando inspectdb en un proyecto

django-admin startproject escuela

cd escuela/

ls

python manage.py startapp estudiantes

ls

python inspectdb > models.py

ls

python manage.py inspectdb > models.py

ls

python manage.py migrate

python manage.py makemigrations estudiantes

python manage.py migrate

python manage.py createsuperuser

python manage.py  runserver


## Importar y exportar en postgres

pg_dump -U reroes -W -h localhost base_clase2 > basename.sql

psql -U reroes -W -h localhost base_clase2 < basename.sql   # import



## Comandos GIT

git clone

git add 

git commit -a -m"mensaje"

git push

git pull

git branch -a # listo los brachs de mi repositorio

git chekcout nombre-branch

### aqui se puede agregar más archivo o modificar archivos
git push -u origin nombre-branch # la primera vez olvidar
