@echo off

dir /B | findstr .tex > docname
set /P docname=<docname
del docname

echo Compiling
pdflatex.exe %docname%
biber.exe %docname:.tex=%
pdflatex.exe %docname%
