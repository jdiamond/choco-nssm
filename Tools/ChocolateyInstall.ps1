$toolsPath = (Split-Path -parent $MyInvocation.MyCommand.Definition)
Install-ChocolateyZipPackage 'nssm-2.16.zip' 'http://nssm.cc/download/nssm-2.16.zip' "$toolsPath"