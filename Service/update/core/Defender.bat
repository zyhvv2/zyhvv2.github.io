set args1=%1& set args2=%2& set args3=%3& set args4=%4& set args5=%5& set args6=%6& set args7=%7& set args8=%8& set args9=%9
if "%args1%"=="version" goto version

:Defender-main
CLS
ECHO.=--------------------------------------------------------------------=
ECHO.Defender
ECHO.=--------------------------------------------------------------------=
ECHO.
ECHO ϵͳ���� 
if "%System_protection%"=="1" (ECHO.1.[��ǰ]����) else (ECHO.1.      ����)
if "%System_protection%"=="0" (ECHO.2.[��ǰ]�ر�) else (ECHO.2.      �ر�)
call choice common [1][2][A]
if "%choice%"=="A" goto Done
call core\AppLock
if not "%AppLock.unlocked%"=="1" goto backup
if "%choice%"=="1" call framework conf user.bat System_protection 1
if "%choice%"=="2" call framework conf user.bat System_protection 0
ECHO. & ECHOC {%c_s%}���. {%c_i%}��������Ч. {%c_h%}��������������˵�...{%c_i%}{\n}& ENDLOCAL & goto Done

:backup
ECHO ����
pause >nul
goto Defender-main

:version
set CoreAppVer=250412

:Done
call conf\user
