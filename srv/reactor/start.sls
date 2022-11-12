# File /srv/reactor/start.sls
# Accept key when minion starts.

accept_key:
    cmd.run:
      - name: 'sudo salt-key -Ay'
