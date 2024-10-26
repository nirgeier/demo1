#!/bin/bash

function addContent(){
  for i in {1..100};
  do
    echo "Line $i" >> file$i.txt
    git add file$i.txt
    git commit -m "Added line $i"
  done
}

git init /tmp/repoA
cd /tmp/repoA
addContent

git init /tmp/repoB 
cd /tmp/repoB
addContent

