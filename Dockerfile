from debian:jessie
maintainer jesse@jessebmiller.com

run apt-get update \
 && apt-get install -y \
            curl \
            nano \
            python \
            ssh

run curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-145.0.0-linux-x86_64.tar.gz | tar xvz --null
run /google-cloud-sdk/install.sh
run /google-cloud-sdk/bin/gcloud components install kubectl
run /google-cloud-sdk/bin/gcloud components update

env PATH $PATH:/google-cloud-sdk/bin
env KUBECONFIG /root/.config/kube/config
env EDITOR=nano

run mkdir /wd
workdir wd