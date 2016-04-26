from debian:jessie
maintainer jesse@jessebmiller.com

run apt-get update && apt-get install -y curl python ssh

run curl https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-106.0.0-linux-x86_64.tar.gz | tar xvz --null
run /google-cloud-sdk/install.sh
run /google-cloud-sdk/bin/gcloud components install kubectl

env PATH $PATH:/google-cloud-sdk/bin
env KUBECONFIG /root/.config/kube/config



