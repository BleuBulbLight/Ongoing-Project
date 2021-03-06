#!/bin/bash

Y=$(date +%Y)
M=$(date +%m)
D=$(date +%d)
T=$(date +%T)

Ym=$Y-$M
Ymd=$Y-$M-$D
GitRep="Ongoing-Project"
HomeDir="/mnt/c/GitRepo1"

Gitdir="$HomeDir/$GitRep"
FileDir="$HomeDir/$GitRep/$Ym"
FileNm="$Ymd".md

mkdir -p $FileDir

echo "### $GitRep $Ymd $T Memo" >> $FileDir/$FileNm

cd $Gitdir
git add .
git commit -m "commit $FileNm $T"
git push origin main
