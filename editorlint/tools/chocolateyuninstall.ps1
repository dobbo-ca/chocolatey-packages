$ErrorActionPreference = 'Stop'

$packageName = 'editorlint'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

# Remove the batch file
$batchFile = Join-Path $toolsDir 'editorlint.bat'
if (Test-Path $batchFile) {
    Remove-Item $batchFile -Force
}