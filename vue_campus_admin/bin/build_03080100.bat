@echo off
echo.
echo [��Ϣ] ���Web���̣�����dist�ļ���
echo.

%~d0
cd %~dp0

cd ..
set NODE_OPTIONS=--openssl-legacy-provider
npm run build:prod

pause
