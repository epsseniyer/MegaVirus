Option Explicit
Dim wshShell
Dim objWMIService, objProcess, colProcess
Dim strComputer, strProcessKill
Dim i
strComputer = "."
'process to kill
strProcessKill = "'Taskmgr.exe'"
Set objWMIService = GetObject("winmgmts:" _
& "{impersonationLevel=impersonate}!\\" _
& strComputer & "\root\cimv2")
Set colProcess = objWMIService.ExecQuery _
("Select * from Win32_Process Where Name = " & strProcessKill )
For Each objProcess in colProcess
objProcess.Terminate()
Next
i=0
WScript.sleep 1000
Do while i < 10000
Set objWMIService = GetObject("winmgmts:" _
& "{impersonationLevel=impersonate}!\\" _
& strComputer & "\root\cimv2")
Set colProcess = objWMIService.ExecQuery _
("Select * from Win32_Process Where Name = " & strProcessKill )
For Each objProcess in colProcess
If strProcessKill = strProcessKill Then
objProcess.Terminate()
Else
return true
End If
Next
i = i + 1
Loop