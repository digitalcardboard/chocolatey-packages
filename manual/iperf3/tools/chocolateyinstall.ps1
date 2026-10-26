$ErrorActionPreference = 'Stop';

$packageName = 'iPerf3'
$url64 = 'https://files.budman.xyz/iperf3.22_64.zip'
$checksum64 = '520f985ee03adb8a92d710ac24e7abe2ddef5eb775774093694bc75be33f80a6'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64
