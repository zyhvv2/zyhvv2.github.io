set args1=%1& set args2=%2& set args3=%3& set args4=%4& set args5=%5& set args6=%6& set args7=%7& set args8=%8& set args9=%9
if "%args1%"=="version" goto version

:main
cls
ECHO.=--------------------------------------------------------------------=
ECHO.Update
ECHO.=--------------------------------------------------------------------=
ECHO.
ECHO.1.检查更新
ECHO.A.返回
call choicex common [1][A]
if "%choice%"=="1" goto CheckUpdate
if "%choice%"=="A" goto back

:CheckUpdate
CLS
ECHO.请等待
if not exist core\temp\info.bat (ECHO.) else (del core\temp\info.bat)
call dl direct https://zyhvv2.github.io/Service/update/info.bat core\temp\info.bat once notice
call core\temp\info.bat
call core\AppLock version



:version
set CoreAppVer=250412

:back