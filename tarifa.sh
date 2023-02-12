#!/bin/bash
#- Tarifa 1: Importe fijo de 100€ que incluyen llamadas ilimitadas
#- Tarifa 2: Importe fijo de 50€ y 1€ por cada llamada
#- Tarifa 3: Importe fijo de 20€ y 2€ por cada llamada


precio1=100
precio2=$((50+$1))
precio3=$((20+$1*2))

echo "precio tarifa 1: $precio1€"
echo "precio tarifa 2: $precio2€"
echo "precio tarifa 3: $precio3€"
echo ""

if [ $precio1 -lt $precio2 ] && [ $precio1 -lt $precio3 ]
then
    #precio1 es el menor
    echo "La tarifa más conveniente es la TARIFA 1. 100€ incluyendo llamadas ilimitadas."
    exit 0
fi

if [ $precio2 -lt $precio1 ] && [ $precio2 -lt $precio3 ]
then
    #precio2 es el menor
    echo "La tarifa más conveniente es la TARIFA 2. 50€ más 1€ por llamada."
    exit 0
fi

if [ $precio3 -lt $precio1 ] && [ $precio3 -lt $precio2 ]
then
    #precio3 es el menor
    echo "La tarifa más conveniente es la TARIFA 3. 20€ más 2€ por llamada."
    exit 0
fi

if [ $precio1 -eq $precio2 ]
then
    echo "Las tarifas 1 y 2 le salen igual de precio."
    exit 0
elif [ $precio1 -eq $precio3 ]
then
    echo "Las tarifas 1 y 3 le salen igual de precio."
    exit 0
elif [ $precio2 -eq $precio3 ]
then
    echo "Las tarifas 2 y 3 le salen igual de precio."
    exit 0
fi