@echo off
title ������å���������
cd /d "%~dp0"
echo ��ѡ�����Դ��Ĭ��ʹ��1��GitCode���¡�
echo.&choice /C 12 /T 5 /D 1 /M "1��ʹ��GitCode�ֿ���� 2��ʹ��Gitee�ֿ����"
if errorlevel 2 goto gitee
if errorlevel 1 goto gitcode
:gitcode
for /f "tokens=4,5 delims=. " %%i in ('ver') do if %%i%%j leq 62 (
echo.&echo ��ǰϵͳ�汾�ϵͣ�����WinHttpЭ������ȷ���������غ�����...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v SecureProtocols  /t REG_DWORD /d 2688 1>nul
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v SecureProtocols  /t REG_DWORD /d 2688 1>nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\WinHttp" /f /v DefaultSecureProtocols  /t REG_DWORD /d 2688 1>nul
reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Internet Settings\WinHttp" /f /v DefaultSecureProtocols  /t REG_DWORD /d 2688 1>nul
)
echo.&echo ʹ��GitCode����...
wscript.exe -e:vbs data\GitCode��������.vbs
exit

:gitee
echo.&echo ʹ��Gitee����...
wscript.exe -e:vbs data\Gitee��������.vbs
exit