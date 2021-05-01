
$ErrorActionPreference = 'Stop';


$packageName= 'XnView'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.xnview.com/XnView-win-full.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)

  checksum      = '8591235824E801F66BDAA7D7AE55B7CE613D1DD4553B5F48A7063AEF4E1A5642'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs
