#!/bin/bash

you_need_help () {
    echo >&2 "ERROR: ${1}" 
    echo "USAGE: ${0} -s source -d destination [-x <scale>]"
    exit 1
}

# You a player or what?
while getopts s:d:x: opts; do
    case "${opts}" in
        s) src=${OPTARG};;
        d) dst=${OPTARG};;
        x) scale=${OPTARG};;
    esac
done

# Figure it out
if [ -z $src ]; then
    you_need_help "You need to specify a source."
elif [ -z $dst ]; then
    you_need_help "You need to specify a destination."
fi

# Own those clown shoes, baby
if [ "${scale}" == "webscale" ]; then
    dst="/dev/null"
fi

# POWERUSER
/usr/bin/env cp -v "${src}" "${dst}"

exit #?
