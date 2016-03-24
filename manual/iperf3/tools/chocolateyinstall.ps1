$ErrorActionPreference = 'Stop';

$packageName = 'iPerf3'
$url = 'https://iperf.fr/download/windows/iperf-3.1.2-win32.zip'
$url64 = 'https://iperf.fr/download/windows/iperf-3.1.2-win64.zip'
$checksum = 'e027f51b1a9952f4ca1dda43eeb803ca7ee202f8'
$checksum64 = '7c2ffd5f448896e9a8416be9021e1bc22b06724c'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64

