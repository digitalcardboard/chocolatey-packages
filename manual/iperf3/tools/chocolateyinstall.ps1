$ErrorActionPreference = 'Stop';

$packageName = 'iPerf3'
$url64 = 'https://files.budman.pw/iperf3.20_64.zip'
$checksum64 = '7F8FABEB885EEB61345F0658D6D0E476248E313CBD182B336AE5AC81FBA5DAED'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64
