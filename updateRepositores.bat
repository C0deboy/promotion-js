@echo off

:Ask
set /P INPUT=Commit to gh-pages?[y/n]: %=%
If /I "%INPUT%"=="y" set branch="gh-pages" & goto Execute
If /I "%INPUT%"=="n" set branch="master" & goto Execute
echo Incorrect input & goto Ask

:Execute

echo UPDATING PROMOTION-JS\n

git add -A && git commit -m "new promotion" && git push origin %branch%
cd ../jaki-jezyk-programowania || pause && exit

echo UPDATING JAKI-JEZYK-PROGRAMOWANIA\n

git checkout promotion-js && git submodule update --remote
git add promotion-js && git commit -m "updated promotion" && git push origin %branch%
cd ../devcave || echo "Devcave won't be updated" && pause && exit

echo UPDATING DEVCAVE\n

git checkout promotion-js && git submodule update --remote
git add promotion-js && git commit -m "updated promotion" && git push origin %branch%

echo DONE
pause
exit