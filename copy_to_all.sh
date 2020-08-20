#!/bin/bash
shopt -s nullglob
for i in ./*/*; do 
cp  ../copy_to_all/* "$i"; 
done 