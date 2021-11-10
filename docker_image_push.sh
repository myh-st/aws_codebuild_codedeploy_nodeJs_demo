#!  /bin/bash
profile="default"
region="ap-southeast-1"
buildTag="shellscript-demo:latest"

echo "$1"
echo "$2"
echo "$3"

if [[ -n "$1" ]]; then
  profile="$1"
fi

if [[ -n "$2" ]]; then
  region="$2"
fi

if [[ -n "$3" ]]; then
  region="$3"
fi


aws ecr get-login-password --region "${region}" --profile "${profile}" | docker login --username AWS --password-stdin "687069305167.dkr.ecr.${region}.amazonaws.com"
docker build -t "${buildTag}" .
docker tag "${buildTag}" "687069305167.dkr.ecr.ap-southeast-1.amazonaws.com${buildTag}"
docker push "687069305167.dkr.ecr.ap-southeast-1.amazonaws.com/${buildTag}"
