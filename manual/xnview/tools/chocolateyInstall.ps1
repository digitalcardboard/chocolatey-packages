
$ErrorActionPreference = 'Stop';


$packageName= 'XnView'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.xnview.com/XnView-win-full.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)

  checksum      = '3A744748934779221D0AB47368D6D5B1AA0572FBE8C1F51225D43E1C60911B30'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
