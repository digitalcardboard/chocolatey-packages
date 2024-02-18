$ErrorActionPreference = 'Stop';

$packageName = 'iPerf3'
$url64 = 'https://files.budman.pw/iperf3.16_64.zip'
$checksum64 = '52063FF7CC8570A86A0AAAEF8221370AFB4A4EE93ACA2029B7DF4BAAD7032B15'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64
