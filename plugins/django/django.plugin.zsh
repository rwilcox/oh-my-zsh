alias pm='python manage.py'
alias pmr='python manage.py runserver'
alias pmrp='python manage.py runserver_plus'
alias pmrpg='pmrp --adminmedia=`pwd`/media/admin'
alias pmsdb='python manage.py syncdb'
alias pms='python manage.py shell'
alias pmsp='python manage.py shell_plus'
alias pmlf='python manage.py loaddata fixtures/*'

alias gs='gunicorn_django'
alias gk='kill `cat .gunicorn.pid`'
alias gl='tail -f .gunicorn.log'

function djapp() {
    mkdir -p $1/templates/$1
    touch $1/__init__.py
    echo "from django.db import models\n\n" > $1/models.py
    echo "from django.contrib import admin\nfrom $1.models import *\n\n" > $1/admin.py
    echo "from django.conf.urls.defaults import *\n\n" > $1/urls.py
}

function django_new {
  virtualenv --no-site-packages venv
  source venv/bin/activate
  easy_install django 
  django-admin.py startproject $1
}
