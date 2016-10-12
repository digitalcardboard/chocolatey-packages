$ErrorActionPreference = 'Stop';

$packageName= 'netscan'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.softperfect.com/download/freeware/netscan_portable.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '17fe3618c335b8cb69e6df8d806bf8e07e3ca029'
  checksumType  = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs

$installFile = Join-Path $toolsDir -ChildPath '32-bit\netscan.exe'
$destCleanup = Join-Path $toolsDir -ChildPath '64-bit'
if (Get-ProcessorBits 64) {
  $installFile = Join-Path $toolsDir -ChildPath '64-bit\netscan.exe'
  $destCleanup = Join-Path $toolsDir -ChildPath '32-bit'
}

Remove-Item $destCleanup -Force -Recurse
Set-Content -Path ("$installFile.gui") -Value $null
