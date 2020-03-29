c.Application.log_datefmt = '%Y-%m-%d %H:%M:%S'
c.Authenticator.admin_users = {'jupyadm'}
c.JupyterHub.answer_yes = True
c.JupyterHub.cookie_secret_file = '/etc/jupyterhub/jupyterhub_cookie_secret'
c.JupyterHub.pid_file = '/tmp/jupid'
c.JupyterHub.ssl_cert = '/etc/jupyterhub/upcert.pem'
c.JupyterHub.ssl_key = '/etc/jupyterhub/upkey.key'
c.Authenticator.whitelist = {'jupyadm'}
c.LocalAuthenticator.create_system_users = True