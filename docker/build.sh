#!/bin/bash
echo "prune all images"
echo "docker system prune -f -a"

cmssw_pkgs="cmsweb proxy frontend exporters das dbs2go dbs couchdb reqmgr reqmgr2ms reqmon workqueue acdcserver alertscollector confdb crabserver crabcache cmsmon dmwmmon dqmgui t0_reqmon t0wmadatasvc dbsmigration phedex sitedb httpgo httpsgo tfaas"
repo=cmssw
for pkg in $cmssw_pkgs; do
    echo "### build $repo/$pkg"
    docker build -t $repo/$pkg $pkg
    echo "### existing images"
    docker images
    docker push $repo/$pkg
    if [ "$pkg" != "cmsweb" ]; then
        docker rmi $repo/$pkg
    fi
done

echo
echo "To remove all images please use this command"
echo "docker rmi \$(docker images -qf \"dangling=true\")"
echo "docker images | awk '{print \"docker rmi -f \"$3\"\"}' | /bin/sh"
