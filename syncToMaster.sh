#!/bin/bash
cd ..
rm -rf monkaux
cp -r monkyincMVC monkaux
cd monkyincMVC/
git reset --hard
git pull origin master
meld . ../monkaux
#Pasar los cambios con meld al nuevo directorio monkinMVC del antiguo monka
