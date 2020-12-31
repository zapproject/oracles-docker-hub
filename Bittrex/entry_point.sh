#!/bin/bash

CONFIG='/current_dir/config/Config.json';
TEMPLATE='/usr/src/zap/zap-oracle-template';

if [ -f $CONFIG ]; then
    echo "'$CONFIG' being set";
    cp $CONFIG $TEMPLATE"/Oracle";
    cd $TEMPLATE
    ls 'Oracle'
    npm start
else
    {
        echo 'Config.json not found, please include Config.json file in current directory with this format'
        cat $TEMPLATE"/Oracle/Config.json"
        echo $EXCONFIG;
    } >&2
fi
