$ErrorActionPreference = 'Stop';

$packageName= 'netscan'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.softperfect.com/download/freeware/netscan_portable.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '3f90e321f5e8197d304b9fd9bb80735762ce74f8'
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
