color FD
taskkill /f /im explorer.exe
start explorer.exe

@echo off
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "C:\Users\UVNNY\Downloads\(UVNNY)\Archivos\Img\WALL_UVNNY.jpg" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

color FD
@echo 
:: UVNNY OTMz  ͡◭ _> ͡◭
_______________________________
setlocal enabledelayedexpansion

REM Deshabilitar servicios innecesarios
sc config DiagTrack start=disabled
sc config diagnosticshub.standardcollector.service start=disabled
sc config dmwappushservice start=disabled
sc config lfsvc start=disabled
sc config WMPNetworkSvc start=disabled
sc config wuauserv start=disabled
sc config wercplsupport start=disabled
sc config wercsvc start=disabled
sc config wdiwifi start=disabled
sc config wdi_service_host start=disabled
sc config werfaultsvc start=disabled
sc config shpamsvc start=disabled
sc config wlanidsvc start=disabled
sc config wisvc start=disabled
sc config TermService start=disabled
sc config NetTcpPortSharing start=disabled
sc config PcaSvc start=disabled
sc config PerfHost start=disabled
sc config TabletInputService start=disabled
sc config lfsvc start=disabled
sc config TrkWks start=disabled
sc config wscsvc start=disabled
sc config WSearch start=disabled
sc config WpnService start=disabled
sc config wpnservice start=disabled
sc config TimeBrokerSvc start=disabled
sc config SENS start=disabled
sc config SensorDataService start=disabled
sc config WinDefend start=disabled
sc config BDESVC start=disabled
sc config BFE start=disabled
sc config BITS start=disabled
sc config ShellHWDetection start=disabled
sc config SysMain start=disabled
sc config DiagTrack start=disabled
sc config bthserv start=disabled
sc config vmickvpexchange start=disabled
sc config vmicguestinterface start=disabled
sc config vmicvss start=disabled
sc config vmicrdv start=disabled
sc config vmicshutdown start=disabled
sc config vmicvmsession start=disabled
sc config vmictimesync start=disabled
sc config vmicvss start=disabled
sc config WSearch start=disabled
sc config WMPNetworkSvc start=disabled
sc config WManSvc start=disabled
sc config XboxNetApiSvc start=disabled
sc config XblAuthManager start=disabled
sc config XblGameSave start=disabled
sc config XboxGipSvc start=disabled
sc config XblGameSave start=disabled
sc config XboxNetApiSvc start=disabled
sc config WMPNetworkSvc start=disabled
sc config wscsvc start=disabled
sc config sysmain start=disabled
timeout /t 5 /nobreak

color FD
:: ______________UVNNY___EXTRAS_______________

:: Desinstalar Cortana
start powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage -AllUsers Microsoft.549981C3F5F10 | Remove-AppxPackage -AllUsers"

:: Deshabilitar Windows Defender
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 /f

:: Detener y deshabilitar el servicio de Windows Defender
sc stop WinDefend
sc config WinDefend start= disabled

echo Windows Defender ha sido deshabilitado de raíz.
:: Limpiar archivos temporales y caché
rd /s /q "%temp%"
del /s /q "C:\Windows\SoftwareDistribution\Download"

:: Deshabilitar aplicaciones provisionadas
for %%A in (%app_list%) do (
    echo Desinstalando: %%A
    start powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Get-AppxPackage -AllUsers %%A | Remove-AppxPackage -AllUsers"
)
color FD
timeout /t 3 /nobreak
:: _______________ENERGIA________UVNNY__________

@echo off

:: Crear el plan de energía personalizado UVNNY
powercfg /duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c 99e202b6-5bf5-4c24-8b57-3c50a4eaa756

:: Configurar el máximo y mínimo rendimiento del procesador al 100%
powercfg /setacvalueindex 99e202b6-5bf5-4c24-8b57-3c50a4eaa756 54533251-82be-4824-96c1-47b60b740d00 100
powercfg /setactive 99e202b6-5bf5-4c24-8b57-3c50a4eaa756

:: Desactivar la opción de administración de energía del estado de vinculación
powercfg /setacvalueindex 99e202b6-5bf5-4c24-8b57-3c50a4eaa756 245d8541-3943-4422-b025-13a784f679b7 0

:: ______________RENDIMIENTO______UVNNY__________
color FD
Windows Registry Editor Version 5.00

:: Deshabilitar búsqueda web en el menú de inicio
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f

:: Deshabilitar transparencia en la interfaz de usuario
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f

:: Deshabilitar efectos visuales
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f

:: Aumentar el tiempo de respuesta del menú Inicio
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 100 /f

:: Deshabilitar animaciones
reg add "HKCU\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 90,12,01,80 /f

:: Aumentar el tiempo de espera de las aplicaciones para responder
reg add "HKCU\Control Panel\Desktop" /v WaitToKillAppTimeout /t REG_SZ /d 2000 /f
reg add "HKCU\Control Panel\Desktop" /v HungAppTimeout /t REG_SZ /d 1000 /f

:: Deshabilitar efectos de sombras en ventanas
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "DisableThumbnails" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ExtendedUIHoverTime" /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d 90,12,03,80 /f

:: ______________OTMz____________GAMING___________
color FD
REG ADD "HKCU\Software\Microsoft\GameBar" /v AllowAutoGameMode /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v AllowOverlay /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v AllowRecordGameClips /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v AllowBroadcasting /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v GameDVR_FSEBehaviorMode /t REG_DWORD /d 2 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v GameDVR_DXGIHonorFSEWindowsCompatible /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v GameDVR_DSEBehaviorMode /t REG_DWORD /d 2 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v GameDVR_DSEBehaviorModeEnabled /t REG_DWORD /d 0 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v GameDVR_HonorUserFSEBehaviorMode /t REG_DWORD /d 0 /f
color FD
timeout /t 5 /nobreak
/////////////////////////////////////////////
@echo off
echo ¿Deseas ejecutar (UVNNY)-STUTTERING)? (S/N)
choice /c SN

if errorlevel 2 (
    echo No seleccionaste Sí.
) else (
    echo Excelente, seleccionaste Sí.
    REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Avalon.Graphics" /v DisableHWAcceleration /t REG_DWORD /d 00000001 /f
)
////////////////////////////////////////////
color 04
@echo off
echo ¿Quieres reiniciar ahora? (S/N)
choice /c SN

if errorlevel 2 (
    echo No seleccionaste Sí.
) else (
    echo Excelente, seleccionaste Sí.
    shutdown /r /t 0
)
/////////////////////////////////////////////
