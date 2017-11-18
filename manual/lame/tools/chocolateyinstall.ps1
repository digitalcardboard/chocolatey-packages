$ErrorActionPreference = 'Stop';

$packageName = 'LAME'
$url = 'http://www.rarewares.org/files/mp3/lame3.100.zip'
$url64 = 'http://www.rarewares.org/files/mp3/lame3.100-64.zip'
$checksum = '224d00e8e189d7d1cb904f6171e79b7b4f9564b7788cc00876b5a2a9d06ff5fe'
$checksum64 = 'db810febfb1e338130903ddc33380b8f1566cdad5d1f006c04654facd0cc76f7'
$checksumType = 'sha256'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64

