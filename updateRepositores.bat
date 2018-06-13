git add -A && git commit -m "new promotion" && git push origin master
cd ../jaki-jezyk-programowania || pause && exit
git submodule update --remote
git add promotion-js && git commit -m "updated promotion" && git push origin master
cd ../devcave || pause && exit
git submodule update --remote
git add promotion-js && git commit -m "updated promotion" && git push origin master

echo DONE
pause