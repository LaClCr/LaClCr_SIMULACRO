#!/bin/bash

resultado=`cat notas.txt | tail -n+2 | awk '{print $1}' | sort | uniq | wc -w`
echo ""
echo "NUMERO DE MATRICULAS: $resultado"
