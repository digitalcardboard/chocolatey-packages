
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

  checksum      = '12906d1b7a911644987d2d80a855353a001bc289'
  checksumType  = 'sha1'
}

Install-ChocolateyPackage @packageArgs
