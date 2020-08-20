#!/bin/bash
shopt -s nullglob

for i in ./*/*; do
  cd "$i" 
  echo "$i" 
  make || true 
  cd ../..
done