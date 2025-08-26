$ErrorActionPreference = 'Stop'

$packageName = 'editorlint'
$version = '1.3.9'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName   = $packageName
  UnzipLocation = $toolsDir
  Url64bit      = "https://github.com/dobbo-ca/editorlint/releases/download/$version/editorlint_v${version}_windows_amd64.zip"
  Checksum64    = 'PLACEHOLDER_WINDOWS_AMD64_SHA256'
  ChecksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

# Create a batch file to make the executable available in PATH
$batchFile = Join-Path $toolsDir 'editorlint.bat'
'@echo off' | Out-File -FilePath $batchFile -Encoding ASCII
"`"$toolsDir\editorlint.exe`" %*" | Out-File -FilePath $batchFile -Encoding ASCII -Append