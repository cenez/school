#!/bin/bash
if [[ "$1" == "3" ]]; then
	git reset --hard HEAD~1
	git push origin main --force
	git branch --set-upstream-to=origin/main main
	git pull
	git log --oneline
fi

