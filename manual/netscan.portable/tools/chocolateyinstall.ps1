$ErrorActionPreference = 'Stop';

$packageName= 'netscan.portable'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.softperfect.com/download/freeware/netscan_portable.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '3cd3ef9cf2409856e152a56660598518c8542fc7699a3a6d713fd65f9f82eb05'
  checksumType  = 'sha256'
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
