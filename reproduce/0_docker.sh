pushd ..
set -e
HOST_CACHE=$(python3 -c "from jukemir import CACHE_DIR; print(CACHE_DIR)")
echo $HOST_CACHE
popd

docker run \
  -it \
  --rm \
  -d \
  --name jukemir \
  -u $(id -u):$(id -g) \
  -v $HOST_CACHE:/jukemir/cache \
  -v ~/../jukemir:/jukemir/jukemir \
  -v ~/../reproduce:/jukemir/reproduce \
  jukemir/lib \
  bash
