Steps to create image and push to docker hub

* docker login
* export RUCIO_VERSION=1.20.1
* docker build --build-arg RUCIO_VERSION=$RUCIO_VERSION -t cmssw/rucio-server:release-$RUCIO_VERSION .
* docker push cmssw/rucio-server:release-$RUCIO_VERSION


To build the special release for the NanoAOD transition:
* export CMS_VERSION=1.22.6.nano1
* export RUCIO_VERSION=1.22.6.post1
* docker build --build-arg RUCIO_VERSION=$RUCIO_VERSION -t cmssw/rucio-server:release-$CMS_VERSION  -f Dockerfile.nano .
* docker push cmssw/rucio-server:release-$CMS_VERSION

