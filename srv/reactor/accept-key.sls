# File: /srv/reactor/accept-key.sls
# AWS server is sending new key -- accept this key

{% if 'act' in data and data['act'] == 'pend' and data['id'].startswith('web') %}
minion_add:
  wheel.key.accept:
    - match: {{ data['id'] }}
{% endif %}
