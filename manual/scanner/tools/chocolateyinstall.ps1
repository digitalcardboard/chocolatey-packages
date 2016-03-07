$ErrorActionPreference = 'Stop';

$packageName = 'Scanner' # arbitrary name for the package, used in messages
$url = 'http://www.steffengerlach.de/freeware/scn2.zip' # download url
$checksum = 'a3b2e7f10333dab3654d7dc0f1dc04421f93f86e'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir" -checksum $checksum -checksumType $checksumType
