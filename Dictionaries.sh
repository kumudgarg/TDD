#!/bin/bash -x
declare -A sounds
sounds[dog]="Bark"
sounds[cow]="moo"
sounds[Lion]="roar"
sounds[wolf]="howl"
echo "dog sound " ${sounds[dog]}
echo "All aniaml sounds " ${sounds[@]}
echo "All animal " ${!sounds[@]}
echo "Number of aniamls " ${#sounds[@]}
unset sounds[dog]

