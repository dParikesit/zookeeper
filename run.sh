#! /bin/bash
if [[ $# -eq 1 ]] ; then
    if [[ $1 == "clean" ]] ; then
        rm -rf data/version-2 hs_err*
    elif [[ $1 == "c" ]] ; then
        touch inject.txt
    elif [[ $1 == "d" ]] ; then
        rm inject.txt
    elif [[ $1 == "start" ]] ; then
        ./bin/zkServer.sh start
    elif [[ $1 == "stop" ]] ; then
        ./bin/zkServer.sh stop
    elif [[ $1 == "cli" ]] ; then
        ./bin/zkCli.sh
    fi
elif [[ $# -eq 0 ]] ; then
    ant
fi