$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://zed.dev/api/releases/stable/0.213.6/Zed-x86_64.exe?'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'zed*'

  checksum      = '0DD5E373A3C99215972C6C3C69017CC206C084099507C78412A0026DB05BD47C'
  checksumType  = 'sha256'
  checksum64    = '0DD5E373A3C99215972C6C3C69017CC206C084099507C78412A0026DB05BD47C'
  checksumType64= 'sha256'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
