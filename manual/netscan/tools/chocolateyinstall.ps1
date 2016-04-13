$ErrorActionPreference = 'Stop';

$packageName= 'netscan'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.softperfect.com/download/freeware/netscan.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '652c51cfbabaa1c3ac051187cd37e7570f9f1f40'
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