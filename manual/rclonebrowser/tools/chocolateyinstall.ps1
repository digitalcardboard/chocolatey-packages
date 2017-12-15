$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/mmozeiko/RcloneBrowser/releases/download/1.2/rclone-browser-1.2-a1156a0-win32.zip'
$url64      = 'https://github.com/mmozeiko/RcloneBrowser/releases/download/1.2/rclone-browser-1.2-a1156a0-win64.zip'

$packageArgs = @{
    packageName = $env:ChocolateyPackageName
    unzipLocation = $toolsDir
    url = $url
    url64bit = $url64

    softwareName = 'rclonebrowser*'
    checksum = 'c4114638e33bdaaac59c7265a80f4ceeecd3b3146f10b04aa4ded9ff6eaddc89'
    checksumType = 'sha256'
    checksum64 = 'a982f563c086ac83645347abbc4cea39ffd40386101f05fa1c343d1397aea29d'
    checksumType64 = 'sha256'
}

$specificFolder = (Split-Path $url) -Replace ".zip"
if (Get-ProcessorBits 64) {
    $specificFolder = (Split-Path $url64) -Replace ".zip"
}

Install-ChocolateyZipPackage $packageName $url $toolsDir $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64 -SpecificFolder $specificFolder