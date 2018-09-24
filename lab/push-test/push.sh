docker tag gcr.io/kubernetes-helm/tiller:v2.10.0 registry.kube.vn/infra/tiller:v2.10.0
docker tag k8s.gcr.io/kube-proxy-amd64:v1.10.2 registry.kube.vn/kube-proxy-amd64:v1.10.2
docker tag k8s.gcr.io/kube-apiserver-amd64:v1.10.2 registry.kube.vn/kube-apiserver-amd64:v1.10.2
docker tag k8s.gcr.io/kube-controller-manager-amd64:v1.10.2 registry.kube.vn/kube-controller-manager-amd64:v1.10.2
docker tag k8s.gcr.io/kube-scheduler-amd64:v1.10.2 registry.kube.vn/kube-scheduler-amd64:v1.10.2
docker tag k8s.gcr.io/etcd-amd64:3.1.12 registry.kube.vn/etcd-amd64:3.1.12
docker tag k8s.gcr.io/kubernetes-dashboard-amd64:v1.8.3 registry.kube.vn/kubernetes-dashboard-amd64:v1.8.3
docker tag k8s.gcr.io/k8s-dns-dnsmasq-nanny-amd64:1.14.8 registry.kube.vn/k8s-dns-dnsmasq-nanny-amd64:1.14.8
docker tag k8s.gcr.io/k8s-dns-sidecar-amd64:1.14.8 registry.kube.vn/k8s-dns-sidecar-amd64:1.14.8
docker tag k8s.gcr.io/k8s-dns-kube-dns-amd64:1.14.8 registry.kube.vn/k8s-dns-kube-dns-amd64:1.14.8
docker tag k8s.gcr.io/pause-amd64:3.1 registry.kube.vn/pause-amd64:3.1
docker tag k8s.gcr.io/pause:3.1 registry.kube.vn/pause:3.1
docker tag k8s.gcr.io/pause:3.1 localhost:8082/pause:3.1
docker tag k8s.gcr.io/pause:3.1 registry.kube.vn/pause:3.1

docker push registry.kube.vn/infra/tiller:v2.10.0
docker push registry.kube.vn/kube-proxy-amd64:v1.10.2
docker push registry.kube.vn/kube-apiserver-amd64:v1.10.2
docker push registry.kube.vn/kube-controller-manager-amd64:v1.10.2
docker push registry.kube.vn/kube-scheduler-amd64:v1.10.2
docker push registry.kube.vn/etcd-amd64:3.1.12
docker push registry.kube.vn/kubernetes-dashboard-amd64:v1.8.3
docker push registry.kube.vn/k8s-dns-dnsmasq-nanny-amd64:1.14.8
docker push registry.kube.vn/k8s-dns-sidecar-amd64:1.14.8
docker push registry.kube.vn/k8s-dns-kube-dns-amd64:1.14.8
docker push registry.kube.vn/pause-amd64:3.1
docker push registry.kube.vn/pause:3.1
