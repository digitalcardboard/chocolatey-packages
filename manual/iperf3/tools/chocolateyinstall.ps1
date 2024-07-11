$ErrorActionPreference = 'Stop';

$packageName = 'iPerf3'
$url64 = 'https://files.budman.pw/iperf3.17.1_64.zip'
$checksum64 = 'A36D8A6284C3097D74E61B3DB5FF45EF08D77494F17E34900C73D69DA94E3810'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64
