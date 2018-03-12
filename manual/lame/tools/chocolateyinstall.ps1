$ErrorActionPreference = 'Stop';

$packageName = 'LAME'
$url = 'http://www.rarewares.org/files/mp3/lame3.100.zip'
$url64 = 'http://www.rarewares.org/files/mp3/lame3.100-64.zip'
$checksum = '09607ea8496003e45396e32101ff7f21aaa3cd9f2f9841749f85b049edbb2fdb'
$checksum64 = '8b32ef66beed351b6fbfc73a36f56bf5737ab3b01f40399cdfb02b9d8e86def2'
$checksumType = 'sha256'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64

