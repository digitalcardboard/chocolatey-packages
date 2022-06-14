$ErrorActionPreference = 'Stop';

$packageName = 'iPerf3'
$url64 = 'https://files.budman.pw/iperf3.11_64bit.zip'
$checksum64 = '166f815beec86de38cc26c243c344c67143575f380974ee0033c6cef90398f84'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64
