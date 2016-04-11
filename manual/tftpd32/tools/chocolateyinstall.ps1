$ErrorActionPreference = 'Stop';

$packageName= 'tftpd32'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://tftpd32.jounin.net/download/tftpd32.452.zip'
$url64      = 'http://tftpd32.jounin.net/download/tftpd64.452.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  checksum      = 'd9cd272974692c3b5976a000bc0aafb1cba273b7'
  checksumType  = 'sha1'
  checksum64    = '07c52a972324d624f6dd9d2992f970bce165a8fc'
  checksumType64= 'sha1'
}

Install-ChocolateyZipPackage @packageArgs