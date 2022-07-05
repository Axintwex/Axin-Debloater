@echo off
title AxinDebloater
MODE CON COLS=99 LINES=22

:menu
cls
Color B                                                                                                              
:::                            _               _____       _     _             _            
:::                /\         (_)             |  __ \     | |   | |           | |           
:::               /  \   __  ___ _ __         | |  | | ___| |__ | | ___   __ _| |_ ___ _ __ 
:::              / /\ \  \ \/ / | '_ \        | |  | |/ _ \ '_ \| |/ _ \ / _` | __/ _ \ '__|
:::             / ____ \  >  <| | | | |       | |__| |  __/ |_) | | (_) | (_| | ||  __/ |   
:::            /_/    \_\/_/\_\_|_| |_|       |_____/ \___|_.__/|_|\___/ \__,_|\__\___|_|   
:::                                                                                                                                                                                                                                                                                                                                                                                             
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

:intro
echo.
echo.MADE BY Axinto#4297  
echo You have to type y ( if u want to remove the app or service) or n (if u want to keep the service)
echo if the service has (Highly reccomended) then if you dont really need it you should remove it 
echo if the service has (Not reccomended) then dont remove it unless you know what you are doing
echo if you dont know the service or you dont use it just press y 
echo make sure you have a restore point 
echo.
echo.
echo type y if you want to continue or else type n 
set /p ch=
if /i "%ch%" == "n" cls &&  exit
if /i "%ch%" == "y" (
       goto :debloat
) else (
     echo Misspell.
     timeout 2 >nul
      goto :menu
)

:debloat
cls
echo Do you want to Remove  3D Builder?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.3DBuilder* | Remove-AppxPackage" && cls
if /i "%ch%" == "n" ^ && cls

cls 
echo Do you want to Remove  3D Print?
set /p con= 
if /i "%con%" == "yes" cls && PowerShell -Command "Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage" && cls 
if /i "%con%" == "no" ^ && cls

cls 
echo Do you want to Remove  3D Viewer?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Alarms App?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls 
echo Do you want to Remove  advertising(Highly reccomended)?
set /p ch= 
if /i "%ch%" == "y" cls && goto :adv
if /i "%ch%" == "n" ^ && goto :news

:adv
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f
reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo /v DisabledByGroupPolicy /t REG_DWORD /d 1 /f

:news
cls
echo Do you want to Remove  Bing News?
set /p ch=
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.BingNews* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Bing Finance?
set /p ch=
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.BingFinance | Remove-AppxProvisionedPackage -Online" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Calculator App?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.WindowsCalculator* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Camera App?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls


cls
echo Do you want to Remove  Cortana (App only)?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls


cls
echo Do you want to Debloat  Discord (This will only debloat it , the app wont be deleted,only unnecesary files will be removed)?
set /p ch= 
if /i "%ch%" == "y" goto :dis
if /i "%ch%" == "n" ^ && goto :edge


:dis
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9001\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9001\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9002\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
DEL "%HOMEPATH%\appdata\Roaming\discord\1.0.9002\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_cloudsync"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_cloudsync"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_cloudsync"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_cloudsync"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_dispatch"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_dispatch"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_dispatch"
rmdir /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_krisp"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_cloudsync"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_dispatch"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_erlpack"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_game_utils"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_media"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_spellcheck"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_krisp"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_cloudsync-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_dispatch-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_erlpack-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_game_utils-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_media-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_spellcheck-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_krisp-1"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.306\modules\discord_overlay2"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_rpc"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9001\modules\discord_overlay2"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_rpc-1"
rmdir /s /q "%HOMEPATH%\appdata\Local\Discord\app-1.0.9002\modules\discord_overlay2-1"
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\am.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ar.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\bg.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\bn.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ca.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\cs.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\da.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\de.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\el.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\en-GB.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\es.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\es-419.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\et.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\fa.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\fi.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\fil.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\fr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\gu.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\he.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\hi.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\hr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\hu.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\id.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\it.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ja.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\kn.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ko.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\lt.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\lv.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ml.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\mr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ms.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\nb.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\nl.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\pl.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\pt-br.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\pt-pt.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ro.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ru.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\sk.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\sl.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\sr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\sv.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\sw.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\ta.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\te.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\th.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\tr.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\uk.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\vi.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\zh-cn.pak" /F /Q
DEL "%HOMEPATH%\appdata\Local\discord\app-1.0.9002\locales\zh-tw.pak" /F /Q
cls

:edge
cls
echo Do you want to Remove  Microsoft Edge (Highly reccomended)?
set /p ch= 
if /i "%ch%" == "y" cls && powershell -Command "get-appxpackage Microsoft.MicrosoftEdge.Stable | remove-appxpackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Feedback Hub?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.WindowsFeedbackHub* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Get Help?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage" && cls  
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Get Started?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  logging?
set /p ch= 
if /i "%ch%" == "y" cls && goto :logging
if /i "%ch%" == "n" ^ && goto :Maps

:logging
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\ReadyBoot" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\NtfsLog" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\FaceUnlock" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\FaceRecoTel" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\EventLog-System" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\EventLog-Security" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\Audio" /v "Start" /t REG_DWORD /d 0 /f
REG ADD "HKLM\System\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d 0 /f

:Maps
cls
echo Do you want to Remove  Maps App?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.WindowsMaps* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Messaging?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft Advertising Client?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.Advertising.Xaml* | Remove-AppxPackage" && PowerShell -Command "Get-AppxPackage *Microsoft.Advertising.Xaml_10.1712.5.0_x64__8wekyb3d8bbwe* | Remove-AppxPackage" && PowerShell -Command "Get-AppxPackage *Microsoft.Advertising.Xaml_10.1712.5.0_x86__8wekyb3d8bbwe* | Remove-AppxPackage" && cls
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft Edge?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftEdge.Stable* | Remove-AppxPackage" && cd %PROGRAMFILES(X86)%\Microsoft\Edge\Application\8*\Installer && setup --uninstall --force-uninstall --system-level && cls
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft Office (MS Store version)?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage" > nul && PowerShell -Command "Get-AppxPackage *Microsoft.Office.Sway* | Remove-AppxPackage" && PowerShell -Command "Get-AppxPackage *Microsoft.Office.Desktop* | Remove-AppxPackage" && cls
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft Mail and Calendar?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage"  && cls
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove Microsoft Mixed Reality Portal?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft Pay?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.Wallet* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft People?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.People* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft Onente?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.Office.Onente* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft Snip and Sketch?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.ScreenSketch* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft Solitare Collection?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft Sticky ntes App?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftStickyntes* | Remove-AppxPackage" && cls
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft Store?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.WindowsStore* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Microsoft Store Purchase (breaks MS Store)?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.StorePurchaseApp* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  News Feeds (Highly reccomended)?
set /p ch= 
if /i "%ch%" == "y" cls && reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v EnableFeeds /t REG_DWORD /d 0 /f | Remove-AppxPackage" && cls
if /i "%ch%" == "n" ^ && cls


cls
echo Do you want to Remove  Microsoft Zune Video and Music Apps?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.ZuneMusic* | Remove-AppxPackage" && PowerShell -Command "Get-AppxPackage *Microsoft.ZuneVideo* | Remove-AppxPackage" && cls
if /i "%ch%" == "n" ^ && cls


cls
echo Do you want to Remove  Photos App(Not reccomended)?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.Windows.Photos* | Remove-AppxPackage" && cls
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  OfficeHub?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.MicrosoftOfficeHub | Remove-AppxProvisionedPackage -Online"" && cls
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Remote Desktop?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.RemoteDesktop* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Sound Recording App?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.WindowsSoundRecorder* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls


cls
echo Do you want Debloat  Spotify (Wont remove the app , it will only remove unnecesary files from it)
set /p ch= 
if /i "%ch%" == "y" cls && goto :spotify
if /i "%ch%" == "n" ^ && goto :spy

:spotify
DEL "%appdata%\Spotify\Apps\buddy-list.spa" /F /Q 
DEL "%appdata%\Spotify\Apps\concert.spa" /F /Q 
DEL "%appdata%\Spotify\Apps\concerts.spa" /F ?Q 
DEL "%appdata%\Apps\concerts.spa" /F /Q 
DEL "%appdata%\Spotify\Apps\error.spa" /F /Q 
DEL "%appdata%\Spotify\Apps\findfriends.spa" /F /Q 
DEL "%appdata%\Spotify\Apps\lyrics.spa" /F /Q 
DEL "%appdata%\Spotify\Apps\radio-hub.spa" /F /Q 
DEL "%appdata%\Spotify\Apps\station.spa" /F /Q 
DEL "%appdata%\Spotify\Apps\stations.spa" /F /Q 
move "%appdata%\Spotify\locales\en.mo" "%appdata%\Spotify" 
move "%appdata%\Spotify\locales\en-US.pak" "%appdata%\Spotify" 
DEL "%appdata%\Spotify\locales" /F /Q 
move "%appdata%\Spotify\en.mo" "%appdata%\Spotify\locales" 
move "%appdata%\Spotify\en-US.pak" "%appdata%\Spotify\locales" 



:spy
cls
echo Do you want to Remove  Spynet
set /p ch= 
if /i "%ch%" == "y" cls && goto :spynet
if /i "%ch%" == "n" ^ && goto :Wether 




:spynet
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v " SpyNetReporting" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v " SubmitSamplesConsent" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpynetReporting" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d 2 /f

:Wether
cls
echo Do you want to Remove  Weather App(highly reccomended)?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage" && cls 
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Xbox App?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.XboxApp* | Remove-AppxPackage" && cls
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Xbox Extras?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.XboxGamingOverlay* | Remove-AppxPackage" && PowerShell -Command "Get-AppxPackage *Microsoft.Xbox.TCUI* | Remove-AppxPackage" && PowerShell -Command "Get-AppxPackage *Microsoft.XboxGameOverlay* | Remove-AppxPackage" && PowerShell -Command "Get-AppxPackage *Microsoft.XboxIdentityProvider* | Remove-AppxPackage" && PowerShell -Command "Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay* | Remove-AppxPackage" && reg delete "HKEY_CURRENT_USER\System\GamechfigStore\Parents" /f >nul && reg delete "HKEY_CURRENT_USER\System\GamechfigStore\Children" /f >nul && cls
if /i "%ch%" == "n" ^ && cls

cls
echo Do you want to Remove  Bloatware from settings ( highly reccomended)?
set /p ch= 
if /i "%ch%" == "y" cls && goto :Bsetting
if /i "%ch%" == "n" ^ && cls goto :phone

:Bsetting
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f 1>NUL 2>NUL
SCHTASKS /Change /TN "\NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /Disable 
SCHTASKS /Change /TN "\NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /Disable
SCHTASKS /Change /TN "\NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /Disable
SCHTASKS /Change /TN "\Microsoft\Windows\WS\WSTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Work Folders\Work Folders Maintenance Work" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Work Folders\Work Folders Logon Synchronization" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WOF\WIM-Hash-Validation" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WOF\WIM-Hash-Management" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WindowsUpdate\sih" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Windows Filtering Platform\BfeOnServiceStartTypeChange" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\WDI\ResolutionHost" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Sysmain\WsSwapAssessmentTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Sysmain\ResPriStaticDbSync" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskNetwork" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTaskLogon" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SoftwareProtectionPlatform\SvcRestartTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Shell\IndexerAutomaticMaintenance" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SettingSync\NetworkStateChangeTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\SettingSync\BackgroundUploadTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\RemoteAssistance\RemoteAssistanceTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\PI\Sqm-Tasks" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Maintenance\WinSAT" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\FileHistory\File History (maintenance mode)" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\File Classification Infrastructure\Property Definition Sync" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\File Classification Infrastructure\Property Definition Sync" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Feedback\Siuf\DmClient" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\CertificateServicesClient\UserTask-Roam" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Autochk\Proxy" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\AppxDeploymentClient\Pre-staged app cleanup" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Application Experience\StartupAppTask" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Windows\AppID\SmartScreenSpecific" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /DISABLE
SCHTASKS /Change /TN "\Microsoft\Office\OfficeTelemetryAgentFallBack" /DISABLE


:phone
cls
echo Do you want to Remove  Your Phone?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage" && cls
if /i "%ch%" == "n" ^ && cls


cls
echo Do you want to Remove  Zune Music?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.ZuneMusic | Remove-AppxProvisionedPackage -Online" && cls
if /i "%ch%" == "n" ^ && cls



cls
echo Do you want to Remove  Zune video?
set /p ch= 
if /i "%ch%" == "y" cls && PowerShell -Command "Get-AppxProvisionedPackage -Online | Where-Object DisplayName -eq Microsoft.ZuneVideo | Remove-AppxProvisionedPackage -Online" && cls
if /i "%ch%" == "n" ^ && cls


cls
echo Do you want to Remove  Microsoft OneDrive?
set /p ch= 
if /i "%ch%" == "y" cls && %SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall >nul && %SystemRoot%\System32\OneDriveSetup.exe /uninstall >nul && cls
if /i "%ch%" == "n" ^ && cls


cls
echo Do you want remove OEM AppX Packages (can remove some important apps , not reccomended if you dont know what you are doing)?
set /p ch= 
if /i "%ch%" == "y" cls && cd C:\ProgramData >nul && takeown /f "Packages" >nul && takeown /f "Packages\*" >nul && rd /s /q "Packages" >nul && cls
if /i "%ch%" == "n" ^ && cls


::Credits to https://www.maketecheasier.com/remove-bloatware-from-windows10/ for the powershell scripts and credits to me for modifying it more :)
::if you are a tweaker and you decide to modify it even further can you dm your script to me (Axinto#4297) , would help me a lot in a private app am working at. :EvilEmoji:
::BYEEEE 