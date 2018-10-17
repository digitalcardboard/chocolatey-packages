
$ErrorActionPreference = 'Stop';


$packageName= 'XnView'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download3.xnview.com/XnView-win-full.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)

  checksum      = '329d7c288571bdbdab803a3d96b978034bcffafec44af64b7998f2acffa01ff6'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
