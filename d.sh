#!/bin/bash

if [ $1 -lt 5 ]
then
    echo "SUSPENDIDO."
elif [ $1 -ge 5 ] && [ $1 -lt 9 ]
then
    echo "APROBADO."
else
    echo "SOBRESALIENTE."
fi