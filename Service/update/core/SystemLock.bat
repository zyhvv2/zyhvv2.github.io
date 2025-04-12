set args1=%1& set args2=%2& set args3=%3& set args4=%4& set args5=%5& set args6=%6& set args7=%7& set args8=%8& set args9=%9
if "%args1%"=="version" goto version

set System.Core.Check=0
if "%LockCode%"=="" goto NoLockCode
:Lock_page
ECHO %LockPageTitle%
if "%SystemLock.Error.Messgaes.Enable%"=="1" echo 错误
set /p ImputLockCode=
if "%ImputLockCode%"=="%LockCode%" goto Locked
if "%ImputLockCode%"=="bypass" goto skip
if not "%ImputLockCode%"=="%LockCode%" set SystemLock.Error.Messgaes.Enable=1
goto Check
goto Lock_page

:Locked
set SystemLock.Locked.Done=1
set SystemLock.Error.Messgaes.Enable=0
goto Check

:Check 
if "%SystemLock.Error.Messgaes.Enable%"=="1" goto Lock_page
if not "%SystemLock.Locked.Done%"=="1" goto Lock_page
if "%SystemLock.Locked.Done%"=="1" cls
::set System.Core.Check=1
goto Done

:skip
if "%System_protection%"=="0" goto Done
if "%System_protection%"=="1" ECHO 该功能已锁定
pause >nul
CLS
goto Lock_page

:NoLockCode
cls
set SystemLock.Locked.Done=1
goto Done

:version
set CoreAppVer=250412

:Done