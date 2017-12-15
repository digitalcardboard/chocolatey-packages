# IMPORTANT: Before releasing this package, copy/paste the next 2 lines into PowerShell to remove all comments from this file:
#   $f='c:\path\to\thisFile.ps1'
#   gc $f | ? {$_ -notmatch "^\s*#"} | % {$_ -replace '(^.*?)\s*?[^``]#.*','$1'} | Out-File $f+".~" -en utf8; mv -fo $f+".~" $f

$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/mmozeiko/RcloneBrowser/releases/download/1.2/rclone-browser-1.2-a1156a0-win32.zip' # download url, HTTPS preferred
$url64      = 'https://github.com/mmozeiko/RcloneBrowser/releases/download/1.2/rclone-browser-1.2-a1156a0-win64.zip' # 64bit URL here (HTTPS preferred) or remove - if installer contains both (very rare), use $url

$packageArgs = @{
    packageName = $env:ChocolateyPackageName
    unzipLocation = $toolsDir
    url = $url
    url64bit = $url64

    softwareName = 'rclonebrowser*'
    checksum = 'c4114638e33bdaaac59c7265a80f4ceeecd3b3146f10b04aa4ded9ff6eaddc89'
    checksumType = 'sha256' #default is md5, can also be sha1, sha256 or sha512
    checksum64 = 'a982f563c086ac83645347abbc4cea39ffd40386101f05fa1c343d1397aea29d'
    checksumType64 = 'sha256' #default is checksumType
}

$specificFolder = (Split-Path $url) -Replace ".zip"
if (Get-ProcessorBits 64) {
    $specificFolder = (Split-Path $url64) -Replace ".zip"
}

## Download and unpack a zip file - https://chocolatey.org/docs/helpers-install-chocolatey-zip-package
Install-ChocolateyZipPackage $packageName $url $toolsDir $url64 -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64 -SpecificFolder $specificFolder