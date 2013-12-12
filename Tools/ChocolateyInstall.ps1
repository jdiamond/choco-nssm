$packageName = 'nssm'
$version = '2.16'
$url = "http://nssm.cc/download/nssm-$version.zip"

$toolsPath = (Split-Path -parent $MyInvocation.MyCommand.Definition)

$is64bit = (Get-WmiObject Win32_Processor).AddressWidth -eq 64

$specificFolder = 'win32'

if ($is64bit) {
    $specificFolder = 'win64'
}

Install-ChocolateyZipPackage $packageName $url "$toolsPath" $url "nssm-$version\$specificFolder"
