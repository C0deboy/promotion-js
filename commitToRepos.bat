@echo off

set destination=".\_site\promotion\"

echo =================================
echo UPDATING JAKI-JEZYK-PROGRAMOWANIA
echo =================================

cd ..\jaki-jezyk-programowania || echo "jaki-jezyk-programowania won't be updated" && pause && exit
xcopy /y "..\promotion-js\img\*" %destination%
xcopy /y "..\promotion-js\promotion.js" %destination%

git add promotion && git commit -m "updated promotion" && git push origin gh-pages

echo ================
echo UPDATING DEVCAVE
echo ================

cd ..\devcave || echo "Devcave won't be updated" && pause && exit

xcopy /y "..\promotion-js\img\*" %destination%
xcopy /y "..\promotion-js\promotion.js" %destination%

git add promotion && git commit -m "updated promotion" && git push origin gh-pages

echo ====
echo DONE
echo ====

pause
exit