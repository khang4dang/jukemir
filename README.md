## Reproducing results from our paper

### Setting up Docker and cache



### Downloading the datasets

Once Docker is running, you can download all of the datasets by running the following shell script:

```sh
for ASSET_TAG in magnatagatune gtzan emomusic giantsteps
do
	./cmd.sh python -m jukemir.assets $ASSET_TAG --delete_wrong --num_parallel 8
done
```

This will retrieve all of the raw dataset assets from their respective sources and verify resultant file integrities. Note that this downloads about 8GB of files and may take quite a long time depending on the speed of your network connection.

The resultant files will be downloaded to the `datasets` subdirectory of your cache directory (`~/jukemir/cache` by default).