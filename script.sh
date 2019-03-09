#!/bin/bash
isCreatingNewProject="y"
while [[ $isCreatingNewProject == "y" ]]; do
echo "Wpisz nazwe dla projektu:"
read name

if [[ -n $name ]]; then
git init $name
cd $name
git add .
git commit -m " commit"
isTrue="y"
while [[ $isTrue == "y" ]]; do
isTrue="n"
r=$(( ( RANDOM % 8 )  + 3 ))
echo $r
while [ $r -ne 0 ]; do 
echo "$numberCommit" >> plik1.txt
git add .
git commit -m "update"
numberCommit=$(( $numberCommit + 1 ))
r=$[r - 1]	
done
random=$(( $RANDOM % 2 ))
echo $random
if [[ $random -eq 1 ]]; then
git merge master
git branch develop
git checkout develop
else git branch develop
git checkout develop
fi
random2=$(( $RANDOM % 4 ))
echo $random2
if [[ $random2 -eq 2 ]]; then
echo "Zakonczono dzialanie skryptu"
echo "Czy zainicjowac nowy projekt? (y/n)"
read isCreatingNewProject
cd ..
if [[ $isCreatingNewProject != "y" ]]; then
exit
fi
else isTrue="y"
fi
done
else 
echo "Nazwa nie moze byc pusta"
fi
done

