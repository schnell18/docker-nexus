#!/bin/sh

KUBE_DATA_DIR=/var/lib/kubernetes
TEMP_DATA_DIR=/tmp/kubernetes

# generate certificates for nexus
cat > $TEMP_DATA_DIR/nexus-csr.json <<EOF
{
  "CN": "nexus.kube.vn",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "CN",
      "L": "Shanghai",
      "O": "kube.vn",
      "OU": "jjhome",
      "ST": "Shanghai"
    }
  ]
}
EOF

cfssl gencert \
  -ca=$KUBE_DATA_DIR/ca.pem \
  -ca-key=$KUBE_DATA_DIR/ca-key.pem \
  -config=$TEMP_DATA_DIR/ca-config.json \
  -hostname=nexus.kube.vn \
  -profile=kubernetes \
  $TEMP_DATA_DIR/nexus-csr.json | cfssljson -bare $KUBE_DATA_DIR/nexus
