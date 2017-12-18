
$ErrorActionPreference = 'Stop';


$packageName= 'audacity-lame'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://lame.buanzo.org/Lame_v3.99.3_for_Windows.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)

  checksum      = '90e9d629b4e528b77c6f51f185c3e81bb3a4eca7d6d53f049ed9ef7787464e8b'
  checksumType  = 'sha256'
}

$options =
@{
  Headers = @{
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
    Referer = 'https://lame.buanzo.org/';
  }
}

Install-ChocolateyPackage @packageArgs -Options $options
