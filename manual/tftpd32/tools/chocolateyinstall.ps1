$ErrorActionPreference = 'Stop';

$packageName= 'tftpd32'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = $(Join-Path (Split-Path -parent $toolsDir) "application\tftpd32.464.zip")
if (Get-ProcessorBits 64) {
  $fileLocation = $(Join-Path (Split-Path -parent $toolsDir) "application\tftpd64.464.zip")
}

Get-ChocolateyUnzip -fileFullPath $fileLocation -destination $toolsDir
