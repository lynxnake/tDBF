@echo off
:prompt
set /p ver="Enter the version prefix: "
if [%ver%] == [] goto prompt
del trunk\tdbf%ver%.zip
del trunk\tdbf%ver%.tar
del trunk\tdbf%ver%.tar.gz
del tdbf%ver%.zip
del tdbf%ver%.tar.gz
cd trunk
c:\gnuwin32\bin\zip -r tdbf%ver%.zip *
move tdbf%ver%.zip ..\
c:\gnuwin32\bin\tar -cvf tdbf%ver%.tar *
c:\gnuwin32\bin\gzip tdbf%ver%.tar
move tdbf%ver%.tar.gz ..\
cd ..
