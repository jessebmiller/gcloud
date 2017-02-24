# gcloud in a container

mount in your config volume so gcloud can keep your credentials and config

    docker run -it -v $DATA/csconfig:/root/.config jesse/gcloud:145.0.0