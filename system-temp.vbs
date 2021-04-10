Function qq(s)
  qq = Chr(34) & s & Chr(34)
End Function
Set fso = CreateObject("Scripting.FileSystemObject")
Set sh  = CreateObject("WScript.Shell")

tempfolder = fso.GetSpecialFolder(2)
path = fso.BuildPath(tempfolder, "doc.cmd")

'sh.Run qq(path)
sh.Run chr(34) & path & Chr(34), 0  
Set WshShell = Nothing  