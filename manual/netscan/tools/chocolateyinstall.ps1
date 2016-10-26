$ErrorActionPreference = 'Stop';

$packageName= 'netscan'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.softperfect.com/download/freeware/netscan_setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url

  softwareName  = 'SoftPerfect Network Scanner*'

  checksum      = 'ec8be42f751c654c5e875cb88ef105a2cd8ea234f32d47a6316bb469c543a528'
  checksumType  = 'sha256'
  checksum64    = $checksum
  checksumType64= 'sha256'

  validExitCodes= @(0)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
