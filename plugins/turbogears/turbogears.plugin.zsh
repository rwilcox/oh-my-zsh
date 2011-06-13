function turbogears_beta_new {
  virtualenv --no-site-packages venv
  source venv/bin/activate
  easy_install pip
  pip install -e 'hg+http://bitbucket.org/turbogears/tg-dev/@2.1b2#egg=TurboGears2'\
  -e 'hg+http://bitbucket.org/turbogears/tgdevtools-dev/@2.1b2#egg=tg.devtools'
  paster quickstart  $1
}
