$ErrorActionPreference = 'Stop';

$packageName = 'LAME'
$url = 'https://www.rarewares.org/files/mp3/lame3.100.1-win32.zip'
$url64 = 'https://www.rarewares.org/files/mp3/lame3.100.1-x64.zip'
$checksum = '2518e1138953c235fb2bfcefbc38883dd04538d6ae0a19692562576ba37bafec'
$checksum64 = '9a9c815203316e5203847e93100c6acf0d5d7a5be7744c9018825ded037052e7'
$checksumType = 'sha256'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$toolsDir" -checksum $checksum -checksumType $checksumType -url64bit "$url64" -checksum64 $checksum64

