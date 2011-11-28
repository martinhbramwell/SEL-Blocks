@echo off

setlocal

set APP_NAME=SELBlocks
rem short-name, jar and xpi files name. Must be lowercase with no spaces

set CHROME_PROVIDERS="content"

set ROOT_DIR=%CD%
set TMP_DIR="build"

xcopy /E /I /Y .\chrome .\build\chrome
xcopy /E /I /Y .\test .\build\test
copy /Y /V  *.bat build
copy /Y /V  *.sh build
copy /Y /V  *.rdf build
copy /Y /V  *.md build
copy /Y /V  *.manifest build


rem generate the XPI file
cd %TMP_DIR%
echo "Generating %APP_NAME%.xpi..."
echo "(Please ensure that 7z.exe can be found from here)"

rem "c:\program files\7-zip\7z.exe" a -r -y -tzip ../%APP_NAME%.zip *
7z.exe a -r -y -tzip ../%APP_NAME%.xpi *

cd %ROOT_DIR%

rem del /S /Q %APP_NAME%*.xpi
rem echo rename %APP_NAME%.zip %APP_NAME%.xpi
rem rename %APP_NAME%.zip %APP_NAME%.xpi


