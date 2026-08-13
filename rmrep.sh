#!/bin/bash
#git reset --hard HEAD^1
#git log --oneline
#git log -p -1

L="./teste"
if [[ "$1" == "0" ]]; then
	git checkout --orphan latest_branch
	cp $L/*.sh ./
	cp $L/*.txt ./
	git add -A
	git commit -am "commit latest"
	git branch -D main
	git branch -m main
	git push -f origin main

	git log --oneline
fi

if [[ "$1" == "1" ]]; then
	rm *.txt
	git add .
	git commit -m "G0"
	#git push
	git push --set-upstream origin main
fi

if [[ "$1" == "2" ]]; then
	#cp $L/rmrep.sh ./
	cp $L/A.txt ./ ; git add . ; git commit -m "A" ; git push
	cp $L/B.txt ./ ; git add . ; git commit -m "B" ; git push
	cp $L/C.txt ./ ; git add . ; git commit -m "C" ; git push
	cp $L/D.txt ./ ; git add . ; git commit -m "D" ; git push
	cp $L/E.txt ./ ; git add . ; git commit -m "E" ; git push
	git log --oneline
fi
if [[ "$1" == "3" ]]; then
	git reset --hard HEAD~1
	git push origin main --force
	git branch --set-upstream-to=origin/main main
	git pull
	git log --oneline
fi

