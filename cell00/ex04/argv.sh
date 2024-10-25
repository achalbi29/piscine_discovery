#!/bin/bash

# Vérifie si des arguments ont été fournis
if [ $# -eq 0 ]; then
    echo "Aucun argument fourni."
    exit 1
fi

# Affiche tous les arguments
echo "Les arguments fournis sont :"
for arg in "$@"; do
    echo "$arg"
done
