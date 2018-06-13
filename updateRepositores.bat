@echo off

:Ask
set /P INPUT=Commit to gh-pages?[y/n]:
If /I "%INPUT%"=="y" set branch="gh-pages" & goto Execute
If /I "%INPUT%"=="n" set branch="master" & goto Execute
echo Incorrect input & goto Ask

:Execute

echo =====================
echo UPDATING PROMOTION-JS
echo =====================

git add -A && git commit -m "new promotion" && git push origin master
cd ../jaki-jezyk-programowania || pause && exit

echo =================================
echo UPDATING JAKI-JEZYK-PROGRAMOWANIA
echo =================================

git checkout promotion-js && git submodule update --remote
git add promotion-js && git commit -m "updated promotion" && git push origin %branch%
cd ../devcave || echo "Devcave won't be updated" && pause && exit

echo ================
echo UPDATING DEVCAVE
echo ================

git checkout promotion-js && git submodule update --remote
git add promotion-js && git commit -m "updated promotion" && git push origin %branch%

echo ====
echo DONE
echo ====

pause
exit