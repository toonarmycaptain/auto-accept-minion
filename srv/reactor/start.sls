# File: /srv/reactor/start.sls
# Accept key when minion named 'minion*' starts.

{% if 'act' in data and data['act'] == 'pend' and data['id'].startswith('minion') %}
accept_key:
    cmd.run:
      - name: 'sudo salt-key -Ay'  # I would like to know why this doesn't work.
