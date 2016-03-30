# IMPORTANT: Before releasing this package, copy/paste the next 2 lines into PowerShell to remove all comments from this file:
#   $f='c:\path\to\thisFile.ps1'
#   gc $f | ? {$_ -notmatch "^\s*#"} | % {$_ -replace '(^.*?)\s*?[^``]#.*','$1'} | Out-File $f+".~" -en utf8; mv -fo $f+".~" $f

$ErrorActionPreference = 'Stop';
$packageName= 'netscan'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.softperfect.com/download/freeware/netscan.zip'
$url64      = 'https://www.softperfect.com/download/freeware/netscan.zip'
$specificFolder = '32-bit'
if (Get-ProcessorBits 64) {
  $specificFolder = '64-bit'
}  

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  specificFolder = $specificFolder  
  checksum      = '056dcfe784e69f6f87eec07b56dc00d6fc541549'
  checksumType  = 'sha1'
  checksum64    = '056dcfe784e69f6f87eec07b56dc00d6fc541549'
  checksumType64= 'sha1'
}

Install-ChocolateyZipPackage @packageArgs