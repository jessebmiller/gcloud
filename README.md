# gcloud in a container

mount in your config volume so gcloud can keep your credentials and config

    docker run -it -v $DATA/csconfig:/root/.config jesse/gcloud:latest

# When gcloud is out of date

The container just needs to be rebuilt so that gcloud is reinstalled. update the
`VERSION` environment variable in the Dockerfile with the new gcloud version.

When this is merged into master docker hub will rebuild and
`jesse/gcloud:latest` will be up to date.

Pull requests accepted.