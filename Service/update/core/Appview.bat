set args1=%1& set args2=%2& set args3=%3& set args4=%4& set args5=%5& set args6=%6& set args7=%7& set args8=%8& set args9=%9
if "%args1%"=="version" goto version

:viewer
CLS
ECHO.=--------------------------------------------------------------------=
ECHO.%store-view-app-name%
ECHO.提供者:%store-view-app-provider%
ECHO.=--------------------------------------------------------------------=
ECHO.
ECHO.【预览】
ECHO.
ECHO.%store-view-app-preview%
ECHO.
ECHO.【活动】
ECHO.
ECHO.%store-view-app-exercise%
ECHO.
ECHO.【更新日志】
ECHO.
ECHO.%store-view-app-updatalog%
ECHO.
ECHO.=--------------------------------------------------------------------=
ECHO.
ECHO.1.获取     (A返回)
set /p choice=

if "%choice%"=="1" goto get-app
if "%choice%"=="A" goto back
goto viewer

:get-app
if exist data\temp\base.zap (
    del data\temp\base.zap
)
ECHO %store-view-app-pn%
set packagename=%store-view-app-pn%
call dl direct https://zyhvv2.github.io/Service/store/app/%packagename%/base.zap data\temp\base.zap once notice
call core\Installer
goto back

:version
set CoreAppVer=250412

:back
set store-view-app-name=
set store-view-app-version=
set store-view-app-size=
set store-view-app-pn=  
set store-view-app-provider=
set store-view-app-devlopment=
set store-view-app-exercise=
set store-view-app-updatalog=
set store-view-app-preview=
set store-view-app-supportv=