$ErrorActionPreference = 'Stop';

$packageName = 'LAME'
$url = 'http://www.rarewares.org/files/mp3/lame3.100-20200409.zip'
$url64 = 'http://www.rarewares.org/files/mp3/lame3.100-64-20200409.zip'
$checksum = 'fcd7eba06d4856f58f0310b9446230fc5687ba64cf77bd05a061016180fbb0f4'
$checksum64 = '59ea16ac74afb04f8ed9f33f75618e4e7e5b3e1ea53f5d751e3834e99f58ba6d'
$checksumType = 'sha256'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64

