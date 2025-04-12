set args1=%1& set args2=%2& set args3=%3& set args4=%4& set args5=%5& set args6=%6& set args7=%7& set args8=%8& set args9=%9
if "%args1%"=="version" goto version

:Defender-main
CLS
ECHO.=--------------------------------------------------------------------=
ECHO.Defender
ECHO.=--------------------------------------------------------------------=
ECHO.
ECHO 系统防护 
if "%System_protection%"=="1" (ECHO.1.[当前]开启) else (ECHO.1.      开启)
if "%System_protection%"=="0" (ECHO.2.[当前]关闭) else (ECHO.2.      关闭)
call choice common [1][2][A]
if "%choice%"=="A" goto Done
call core\AppLock
if not "%AppLock.unlocked%"=="1" goto backup
if "%choice%"=="1" call framework conf user.bat System_protection 1
if "%choice%"=="2" call framework conf user.bat System_protection 0
ECHO. & ECHOC {%c_s%}完成. {%c_i%}更改已生效. {%c_h%}按任意键返回主菜单...{%c_i%}{\n}& ENDLOCAL & goto Done

:backup
ECHO 错误
pause >nul
goto Defender-main

:version
set CoreAppVer=250412

:Done
call conf\user
