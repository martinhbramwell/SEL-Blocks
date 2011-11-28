@echo off

del *.xpi
del /S /F /Q build
rmdir /S /Q build\chrome\content\extensions
rmdir /S /Q build\chrome\content
rmdir /S /Q build\chrome
rmdir /S /Q build


