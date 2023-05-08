#!/bin/bash

# Array con los nombres de los archivos generados
file_names=("loremipsum-1.txt" "loremipsum-2.txt" "loremipsum-3.txt" "loremipsum-4.txt" "loremipsum-5.txt")

# Función para contar las líneas de un archivo
count_lines() {
  file=$1
  lines=$(wc -l < "$file")
  echo "$file tiene $lines líneas."
}

# Iterar sobre los archivos y contar las líneas
for file_name in "${file_names[@]}"
do
  count_lines "$file_name"
done
