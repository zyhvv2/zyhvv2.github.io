set args1=%1& set args2=%2& set args3=%3& set args4=%4& set args5=%5& set args6=%6& set args7=%7& set args8=%8& set args9=%9
if "%args1%"=="version" goto version

:STORE
call conf\launcher
::����ظ���װ
if "%store-view-app-pn%"=="%data-app-1-pn%" goto pn-error
if "%store-view-app-pn%"=="%data-app-2-pn%" goto pn-error
if "%store-view-app-pn%"=="%data-app-3-pn%" goto pn-error
if "%store-view-app-pn%"=="%data-app-4-pn%" goto pn-error
if "%store-view-app-pn%"=="%data-app-5-pn%" goto pn-error
if "%store-view-app-pn%"=="%data-app-6-pn%" goto pn-error
if "%store-view-app-pn%"=="%data-app-7-pn%" goto pn-error
if "%store-view-app-pn%"=="%data-app-8-pn%" goto pn-error
if "%store-view-app-pn%"=="%data-app-9-pn%" goto pn-error
if "%store-view-app-pn%"=="%data-app-10-pn%" goto pn-error


cls
ECHO.���ڰ�װ
7z x -aoa -y -bd .\data\temp\base.zap -o.\data\app\%store-view-app-pn% >nul || (
    ECHO.��װʧ��
    ECHO.�����������
    pause >nul
    goto back
)
::д��Ӧ����Ϣ
ECHO.set LocalAppName=%store-view-app-name% >>.\data\app\%store-view-app-pn%\AppInfo.bat
ECHO.set LocalAppVer=%store-view-app-version% >>.\data\app\%store-view-app-pn%\AppInfo.bat
ECHO.set LocalAppPn=%packagename% >>.\data\app\%store-view-app-pn%\AppInfo.bat
::������ʾ
if "%data-app-1%"=="" (
    framework conf launcher.bat data-app-1 %store-view-app-name%
    framework conf launcher.bat data-app-1-pn %store-view-app-pn%
    goto done
    )
if "%data-app-2%"=="" (
    framework conf launcher.bat data-app-2 %store-view-app-name%
    framework conf launcher.bat data-app-2-pn %store-view-app-pn%
    goto done
    )
if "%data-app-3%"=="" (
    framework conf launcher.bat data-app-3 %store-view-app-name%
    framework conf launcher.bat data-app-3-pn %store-view-app-pn%
    goto done
    )
if "%data-app-4%"=="" (
    framework conf launcher.bat data-app-4 %store-view-app-name%
    framework conf launcher.bat data-app-4-pn %store-view-app-pn%
    goto done
    )
if "%data-app-5%"=="" (
    framework conf launcher.bat data-app-5 %store-view-app-name%
    framework conf launcher.bat data-app-5-pn %store-view-app-pn%
    goto done
    )
if "%data-app-6%"=="" (
    framework conf launcher.bat data-app-6 %store-view-app-name%
    framework conf launcher.bat data-app-6-pn %store-view-app-pn%
    goto done
    )
if "%data-app-7%"=="" (
    framework conf launcher.bat data-app-7 %store-view-app-name%
    framework conf launcher.bat data-app-7-pn %store-view-app-pn%
    goto done
    )
if "%data-app-8%"=="" (
    framework conf launcher.bat data-app-8 %store-view-app-name%
    framework conf launcher.bat data-app-8-pn %store-view-app-pn%
    goto done
    )
if "%data-app-9%"=="" (
    framework conf launcher.bat data-app-9 %store-view-app-name%
    framework conf launcher.bat data-app-9-pn %store-view-app-pn%
    goto done
    )
if "%data-app-10%"=="" (
    framework conf launcher.bat data-app-10 %store-view-app-name%
    framework conf launcher.bat data-app-10-pn %store-view-app-pn%
    goto done
    )

:pn-error
ECHOC {%c_e%}��װʧ��{%c_i%}{\n}&
ECHOC {%c_e%}�����ظ���װ��ͬӦ��{%c_i%}{\n}&
pause >nul
goto back

:done
ECHO.��װ���
pause >nul
goto back

:version
set CoreAppVer=250412

:back