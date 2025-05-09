:250509ver
set store-recommend-top=Store已开始测试
set store-recommend-1=1.DTool
set store-recommend-1-filename=store-app-1.bat
set store-recommend-2=2.TeleMsg
set store-recommend-2-filename=store-app-2.bat
set store-recommend-3=3.Defender
set store-recommend-3-filename=store-app-3.bat
set store-recommend-4=4.Sodium
set store-recommend-5=
set store-recommend-6=
set store-recommend-7=
set store-recommend-8=
set store-recommend-9=
set store-recommend-10=
set store-recommend-11=

:main
if %BuildTime% lss 250509 goto back
ECHO.Store已开始测试
ECHO.1.DTool
ECHO.2.TeleMsg
ECHO.3.Zhium
call choicex common [1][2][3][A]
if "%choice%"=="1" call dl direct https://zyhvv2.github.io/Service/store/page/%store-recommend-1-filename% core\temp\%store-recommend-1-filename% once notice && call core\temp\%store-recommend-1-filename% && call core\Appview.bat
if "%choice%"=="2" call dl direct https://zyhvv2.github.io/Service/store/page/%store-recommend-2-filename% core\temp\%store-recommend-2-filename% once notice && call core\temp\%store-recommend-2-filename% && call core\Appview.bat
if "%choice%"=="3" call dl direct https://zyhvv2.github.io/Service/store/page/%store-recommend-3-filename% core\temp\%store-recommend-3-filename% once notice && call core\temp\%store-recommend-3-filename% && call core\Appview.bat
if "%choice%"=="A" goto back


:back
set back-choice=1