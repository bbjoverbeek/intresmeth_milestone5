#!/bin/bash

FILEPATH=$1

function de_searcher {

    grep -wc 'de' $FILEPATH 

}

de_searcher