$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#$url        = 'https://download.lenovo.com/pccbbs/desktop/lma2146.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = 'https://download.lenovo.com/pccbbs/desktop/lma2146.exe'

  softwareName  = 'Lenovo Migration Assistant*'

  checksum      = '9336bd6953a4e3b500fbf0e1e219467c6768ee48b39f580add25f6fde467393b'
  checksumType  = 'sha256'

  validExitCodes= @(0)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs