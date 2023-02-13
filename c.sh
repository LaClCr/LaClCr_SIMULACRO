#!/bin/bash

numLineas=`cat notas.txt | wc -l`
cantAprobados=0
cantSuspensos=0

for i in `seq 2 $numLineas`
do
    nota=`cat notas.txt | tail -n+$i | head -n1 | awk '{print $3}'`

    if [ $nota -lt 5 ]
    then
        cantSuspensos=$(($cantSuspensos + 1))
    else
        cantAprobados=$(($cantAprobados + 1))
    fi
done

echo "Aprobados: $cantAprobados"
echo "Suspensos: $cantSuspensos"
