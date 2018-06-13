@echo off

:Ask
set /P INPUT=Commit to gh-pages?[y/n]: %=%
If /I "%INPUT%"=="y" set branch="gh-pages" & goto Execute
If /I "%INPUT%"=="n" set branch="master" & goto Execute
echo Incorrect input & goto Ask

:Execute
echo %branch%

@echo on

git add -A && git commit -m "new promotion" && git push origin %branch%
cd ../jaki-jezyk-programowania || pause && exit
git submodule update --remote
git add promotion-js && git commit -m "updated promotion" && git push origin %branch%
cd ../devcave || echo "Devcave won't be updated" && pause && exit
git submodule update --remote
git add promotion-js && git commit -m "updated promotion" && git push origin %branch%

echo DONE
pause
exit