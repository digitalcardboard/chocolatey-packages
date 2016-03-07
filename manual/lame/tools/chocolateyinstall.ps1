$ErrorActionPreference = 'Stop';

$packageName = 'LAME'
$url = 'http://www.rarewares.org/files/mp3/lame3.99.5.zip'
$url64 = 'http://www.rarewares.org/files/mp3/lame3.99.5-64.zip'
$checksum = '5ec7274d605f5d11a8747c075c1daedcff87d629'
$checksum64 = '0e1f1cdf5ddfd53c0e110c70250f8e9dd2acbaea'
$checksumType = 'sha1'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64

