$LogFile = "C:\Windows\Temp\VSCode_Install.log"
$TargetFolder = "B:\Program Files\VSCode"
$SourceFolder = $PSScriptRoot 
$RepoSourceFolder = $SourceFolder + '\Repo_Basic'
$exeFile = "VSCodeSetup-x64-1.82.2.exe"
$fullPath = $SourceFolder + $exeFile

Start-Process VSCodeSetup-x64-1.82.2.exe -ArgumentList "/VERYSILENT /NORESTART /MERGETASKS=!runcode--local-package-repository=$($RepoSourceFolder) --shared=yes --package-set-basic install" -Wait -PassThru -WindowStyle Hidden
