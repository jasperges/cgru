#!/bin/bash

pushd `dirname $0` > /dev/null
export CGRU_KEEPER=$PWD
if [ -z "$CGRU_LOCATION" ]; then
   cd ../..
   [ -f "./setup.sh" ] && source ./setup.sh
fi
popd > /dev/null

"$CGRU_PYTHONEXE" "$CGRU_KEEPER/keeper.py" "$@"