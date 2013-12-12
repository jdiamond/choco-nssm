$packageName = 'nssm'
$version = '2.16'
$url = "http://nssm.cc/download/nssm-$version.zip"

$toolsPath = (Split-Path -Parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url "$toolsPath"

$folderToIgnore = 'win32'

if (Get-ProcessorBits 32) {
    $folderToIgnore = 'win64'
}

Set-Content -Path ("$toolsPath\nssm-$version\$folderToIgnore\nssm.exe.ignore") -Value $null
