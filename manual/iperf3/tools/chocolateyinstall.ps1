$ErrorActionPreference = 'Stop';

$packageName = 'iPerf3'
$url = 'https://iperf.fr/download/windows/iperf-3.1.3-win32.zip'
$url64 = 'https://iperf.fr/download/windows/iperf-3.1.3-win64.zip'
$checksum = '36229bacfda9ad0a05d7eba9e3843b18b94046da'
$checksum64 = 'c63d306daac82987839ed94cd8705a1121af0181'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64
