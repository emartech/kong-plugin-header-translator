!#/bin/bash

luarocks make
luarocks pack header-translator
find . -name '*.rockspec' | xargs luarocks upload --api-key=$LUAROCKS_API_KEY
find . -name '*.all.rock' -delete
find . -name '*.src.rock' -delete