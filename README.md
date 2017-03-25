# gcloud in a container

mount in your config volume so gcloud can keep your credentials and config

    docker run -it -v $DATA/csconfig:/root/.config jesse/gcloud:latest

# When gcloud is out of date

The container just needs to be rebuilt so that gcloud is reinstalled. update the
`Version` file with the new gcloud version to invalidate the layers.

Pull requests accepted.