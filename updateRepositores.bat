git add -A && git commit -m "new promotion" && git push origin gh-pages
cd ../jaki-jezyk-programowania || pause && exit
git submodule update --remote
git add promotion-js && git commit -m "updated promotion" && git push origin gh-pages
cd ../devcave || echo "Devcave won't be updated" && pause && exit
git submodule update --remote
git add promotion-js && git commit -m "updated promotion" && git push origin gh-pages

echo DONE
pause