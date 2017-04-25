
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

  checksum      = 'faaf824fa45a4d2056e9e9bfa0eaa0f77311fa390dd18f60022b86e11ba24935'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
