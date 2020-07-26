# Kubernetes

## Monitoring
### Send grafana Alerts to Gmail
Add to grafana ConfigMap (grafana.ini)
```
[smtp]
enabled = true
host = smtp.gmail.com:465
user = xxxx@gmail.com
password = """PASSWORD"""
;cert_file =
;key_file =
skip_verify = true
from_address = xxxx@gmail.com
from_name = Grafana
```
