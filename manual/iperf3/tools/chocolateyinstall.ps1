$ErrorActionPreference = 'Stop';

$packageName = 'iPerf3'
$url = 'https://iperf.fr/download/iperf_3.0/iperf-3.0.11-win32.zip'
$url64 = 'https://iperf.fr/download/iperf_3.1/iperf-3.1.2-win64.zip'
$checksum = 'a726d7bb1a8b3fca367bf1597a7599d3e4439be0'
$checksum64 = '7231d4433481aad147222d485a7a394e7f91be47'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64

