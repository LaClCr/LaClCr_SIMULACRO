#!/bin/bash
numLineas=`cat notas.txt | wc -l`

for i in `seq 2 $numLineas`
do
    nombre=`cat notas.txt | tail -n+$i | head -n1 | awk '{print $1}'`
    modulo=`cat notas.txt | tail -n+$i | head -n1 | awk '{print $2}'`

    if [ $nombre == $1 ] && [ $modulo == $2 ]
    then
        nota=`cat notas.txt | tail -n+$i | head -n1 | awk '{print $3}'`

        echo $nota
        ./d.sh $nota
    
    fi
done