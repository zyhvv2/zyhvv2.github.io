set args1=%1& set args2=%2& set args3=%3& set args4=%4& set args5=%5& set args6=%6& set args7=%7& set args8=%8& set args9=%9
if "%args1%"=="version" goto version

:AppLock-first
if "%LockCode%"=="" goto Done
set AppLock.unlocked=0
set AppLock.error.Messgaes=0
set AppLock.imput=zos-oswps
goto AppLock-main

:AppLock-main
if "%AppLock.error.Messgaes%"=="1" (ECHO √‹¬Î¥ÌŒÛ£¨«Î÷ÿ–¬ ‰»Î) else (ECHO «Î ‰»Î√‹¬Î)
set /p AppLock.imput=
if "%AppLock.imput%"=="back" (goto back)
if "%AppLock.imput%"=="%LockCode%" (goto Done) else (goto Error)
goto AppLock-main

:Error
set AppLock.error.Messgaes=1
goto AppLock-main

:Done
set AppLock.unlocked=1
set AppLock.error.Messgaes=0
set AppLock.imput=***
goto back

:version
set CoreAppVer=250412

:back