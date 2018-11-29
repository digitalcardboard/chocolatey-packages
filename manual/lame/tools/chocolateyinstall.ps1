$ErrorActionPreference = 'Stop';

$packageName = 'LAME'
$url = 'http://www.rarewares.org/files/mp3/lame3.100.zip'
$url64 = 'http://www.rarewares.org/files/mp3/lame3.100-64.zip'
$checksum = '910e14565e7edc419e3b841d1cd7eb83db52727d0f34fceec2b04d905a148ac6'
$checksum64 = 'c9cddf1650fff0ebe0ba79de794b1fa9b334f43f08e2d365b7a158941ad78fa7'
$checksumType = 'sha256'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64

