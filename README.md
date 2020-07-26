# Kubernetes

## Customizations
### Bash-Completion
Configure kubectl bash completion
```
# Setup autocomplete into the current shell
source /usr/share/bash-completion/bash_completion
source <(kubectl completion bash)

# Setup autocomplete permanently
echo source /usr/share/bash-completion/bash_completion >> ~/.bashrc
echo "source <(kubectl completion bash)" >> ~/.bashrc
```

## Kubespray


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

## Storage
### Rook (Ceph Storage)

```
git clone --single-branch --branch release-1.3 https://github.com/rook/rook.git
cd rook/cluster/examples/kubernetes/ceph
kubectl create -f common.yaml
kubectl create -f operator.yaml
kubectl create -f cluster.yaml
```
