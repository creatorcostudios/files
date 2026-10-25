Set fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = CreateObject("WScript.Shell")

scriptDir = fso.GetParentFolderName(WScript.ScriptFullName)
batPath = scriptDir & "\Installer.bat"

WshShell.Run Chr(34) & batPath & Chr(34), 0, False
Set WshShell = Nothing
