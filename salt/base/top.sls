base:
  '*':
    - init.env_init
    - users.init
prod:
  '*':
    - cluster.haproxy-service
    - cluster.haproxy-service-keepalived 
    - web.bbs
  'saltstack-minion.example.com':
    - memcached.service
