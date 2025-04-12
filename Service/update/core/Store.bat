set args1=%1& set args2=%2& set args3=%3& set args4=%4& set args5=%5& set args6=%6& set args7=%7& set args8=%8& set args9=%9
if "%args1%"=="version" goto version

:Store-first
set error-version=0
CLS
ECHO.连接服务器
del core\temp\recommend.bat
del core\temp\view.bat
del core\temp\getinfo.bat
call dl direct https://zyhvv2.github.io/Service/store/recommend.bat core\temp\recommend.bat once notice
call dl direct https://zyhvv2.github.io/Service/store/view.bat core\temp\view.bat once notice
call dl direct https://zyhvv2.github.io/Service/store/getinfo.bat core\temp\getinfo.bat once notice
if not exist core\temp\recommend.bat (goto Error)
call core\temp\recommend.bat
call core\temp\view.bat
call core\temp\getinfo.bat
:Store-main
if "%error-version%"=="1" goto Error
CLS
ECHO.=--------------------------------------------------------------------=
ECHO.Store
ECHO.=--------------------------------------------------------------------=
ECHO.1.推荐
ECHO.2.浏览
ECHO.3.兑换
call choice common [1][2][3][A]
if "%choice%"=="1" goto recommend
if "%choice%"=="2" goto view
if "%choice%"=="3" call Store\back
if "%choice%"=="A" goto back
goto Store-main

:recommend
CLS
ECHO.=--------------------------------------------------------------------=
ECHO.推荐
ECHO.=--------------------------------------------------------------------=
ECHO.%store-recommend-top%
ECHO.%store-recommend-1%
ECHO.%store-recommend-2%
ECHO.%store-recommend-3%
ECHO.%store-recommend-4%
ECHO.%store-recommend-5%
ECHO.%store-recommend-6%
ECHO.%store-recommend-7%
ECHO.%store-recommend-8%
ECHO.%store-recommend-9%
ECHO.%store-recommend-10%
call choicex common [1][2][3][4][5][6][7][8][9][10][A]
if "%choice%"=="A" goto Store-main
if "%choice%"=="1" goto ch1
if "%choice%"=="2" goto ch2
goto recommend

:ch1
del core\temp\store-app-1.bat
call dl direct https://zyhvv2.github.io/Service/store/page/%store-recommend-1-filename% core\temp\%store-recommend-1-filename% once notice
call core\temp\%store-recommend-1-filename%
call core\Appview
goto recommend

:ch2
del core\temp\store-app-2.bat
call dl direct https://zyhvv2.github.io/Service/store/page/%store-recommend-2-filename% core\temp\%store-recommend-2-filename% once notice
call core\temp\%store-recommend-2-filename%
call core\Appview
goto recommend

:view
CLS
ECHO.=--------------------------------------------------------------------=
ECHO.浏览
ECHO.=--------------------------------------------------------------------=
ECHO.1.%store-view-1%
ECHO.2.%store-view-2%
ECHO.3.%store-view-3%
ECHO.4.%store-view-4%
ECHO.5.%store-view-5%
ECHO.6.%store-view-6%
ECHO.7.%store-view-7%
ECHO.8.%store-view-8%
pause

:Error
if "%error-version%"=="1" set store-error-message=ZOS版本过低
ECHO.无法连接服务器
ECHO.%store-error-message%
pause >nul
goto back

:version
set CoreAppVer=250412

:back