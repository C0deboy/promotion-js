@echo off

set destination=".\promotion\"

cd ..\jaki-jezyk-programowania || goto devcave

xcopy /y "..\promotion-js\img\*" %destination%
xcopy /y "..\promotion-js\promotion.js" %destination%

:devcave

cd ..\devcave || goto end

xcopy /y "..\promotion-js\img\*" %destination%
xcopy /y "..\promotion-js\promotion.js" %destination%

:end
exit