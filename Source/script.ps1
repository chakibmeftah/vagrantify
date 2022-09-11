# Ajouter VMware OVF Tool à la variable PATH

$AddedLocation ="C:\program files\VMWare\VMware OVF Tool"
$Reg = "Registry::HKEY_CURRENT_USER\Environment"
$OldPath = (Get-ItemProperty -Path "$Reg" -Name PATH).Path
$NewPath= $OldPath + ’;’ + $AddedLocation
Set-ItemProperty -Path "$Reg" -Name PATH –Value $NewPath

# Ajouter VirtualBox à la variable PATH

$AddedLocation ="C:\Program Files\Oracle\VirtualBox"
$Reg = "Registry::HKEY_CURRENT_USER\Environment"
$OldPath = (Get-ItemProperty -Path "$Reg" -Name PATH).Path
$NewPath= $OldPath + ’;’ + $AddedLocation
Set-ItemProperty -Path "$Reg" -Name PATH –Value $NewPath

# installer le plugin vmware-esxi0

vagrant plugin install vagrant-vmware-esxi