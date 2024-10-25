#!/bin/bash

# Vérifie si des arguments ont été fournis
if [ $# -eq 0 ]; then
    echo "Erreur : Aucun nom de dossier fourni."
    echo "Usage :  $0 ex nom_dossier1 nom_dossier2 ..."
    exit 1
fi

# Crée chaque dossier en ajoutant "ex" au début du nom
for arg in "$@"; do
    directory_name="ex$arg"
    mkdir "$directory_name"

    # Vérifie si la création du dossier a réussi
    if [ $? -eq 0 ]; then
        echo "Dossier '$directory_name' créé avec succès."
    else
        echo "Erreur lors de la création du dossier '$directory_name'."
    fi
done
