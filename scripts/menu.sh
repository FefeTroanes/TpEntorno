#!/bin/bash

touch ./datasets/caca.txt

PS3="Elija una tarea : "
OPCIONES=( "Generar imágenes" "Descomprimir imágenes" "Procesar imágenes" "Comprimir imágenes" "Salir" )
select OPT in "${OPCIONES[@]}"
do
  case $OPT in
    "Generar imágenes")
      bash ./scripts/generar.sh
      break
      ;;
    "Descomprimir imágenes")
      bash ./scripts/descomprimir.sh
      break
      ;;
    "Procesar imágenes")
      bash ./scripts/procesar.sh
      break
      ;;
    "Comprimir imágenes")
      bash ./scripts/comprimir.sh
      break
      ;;
    "Salir")
      break 2
      ;;
    *)
      echo "Opcion no válida."
  esac
done
