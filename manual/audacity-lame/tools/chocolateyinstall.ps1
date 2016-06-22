
$ErrorActionPreference = 'Stop';


$packageName= 'audacity-lame'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://lame.buanzo.org/Lame_v3.99.3_for_Windows.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)

  checksum      = 'a9aa7463aa9b685bdd20a5e12448c25b40a7677f'
  checksumType  = 'sha1'
}

$options =
@{
  Headers = @{
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
    Referer = 'http://lame.buanzo.org/';
  }
}

Install-ChocolateyPackage @packageArgs -Options $options
