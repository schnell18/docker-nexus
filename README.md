# Introduction

This is demonstration of docker-compose powered nexus3 docker registry
setup.

Not intended for production use!!!

## setup instructions

The data directory must be writable to uid 200.
Otherwise, nexus won't startup.

    mkdir -p .state/nexus/data
    chown -R 200 .state/nexus/data
    docker-compose up -d

## add self-signed certifcates to OS trust store

On Arch and Manjaro Linux, you type the follow command:

    cd provision/certs
    sudo cp nexus.kube.vn-cert.pem /etc/ca-certificates/trust-source/anchors/nexus.kube.vn-cert.pem.cert
    sudo cp registry.kube.vn-cert.pem /etc/ca-certificates/trust-source/anchors/registry.kube.vn-cert.pem.cert
    sudo trust extract-compat

## nexus setup

Enable "Docker Bearer Token Realm" under Security -> Realms
