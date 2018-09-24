# expect MINION_COUNT KUBERNETES_PUBLIC_ADDRESS

KUBE_DATA_DIR=/var/lib/kubernetes
TEMP_DATA_DIR=/tmp/kubernetes

# create directories
if [ ! -d $KUBE_DATA_DIR ]; then
  mkdir -p $KUBE_DATA_DIR
fi

if [ ! -d $TEMP_DATA_DIR ]; then
  mkdir -p $TEMP_DATA_DIR
fi

if [ ! -f $KUBE_DATA_DIR/ca.pem ]; then
  echo "Generating ca..."

cat << EOF | cfssl gencert -initca - | cfssljson -bare $KUBE_DATA_DIR/ca
{
  "CN": "Kubernetes",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "CN",
      "L": "Shanghai",
      "O": "Kubernetes",
      "OU": "CA",
      "ST": "Shanghai"
    }
  ]
}
EOF

cat << EOF > $TEMP_DATA_DIR/ca-config.json
{
  "signing": {
    "default": {
      "expiry": "8760h"
    },
    "profiles": {
      "kubernetes": {
        "usages": ["signing", "key encipherment", "server auth", "client auth"],
        "expiry": "8760h"
      }
    }
  }
}
EOF
