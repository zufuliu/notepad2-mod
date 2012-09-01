@ECHO OFF
SETLOCAL

SET PATH=C:\MSYS\bin;%PATH%

ECHO Minifying and combining css files...

cat print.css pygment_trac.css stylesheet.css | cleancss -o pack.css
rem cleancss -o print.min.css print.css && ^
rem cleancss -o pygment_trac.min.css pygment_trac.css && ^
rem cleancss -o stylesheet.min.css stylesheet.css

ENDLOCAL
PAUSE