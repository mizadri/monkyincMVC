#!/bin/bash
cd ..
rm -rf auxmonky
cp -r monkyincMVC auxmonky
cd monkyincMVC/
git reset --hard
git pull origin master
meld . ../auxmonky
#Pasar los cambios con meld al nuevo directorio monkinMVC del antiguo monka
