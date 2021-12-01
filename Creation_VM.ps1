# Full texte : Mode "Conf"
# Copie du VHD "modèle" (vhd diff vierge par famille OS)

Copy-Item -Path "D:\Hyper-V\VHDs\_SRV.vhdx" -Destination "D:\Hyper-V\VHDs\SRV-01.vhdx"

# Création VM !!! Le VHD doit exister

New-VM -VMName "SRV-01" -Generation 2 -MemoryStartupBytes 512MB -VHDPath "D:\Hyper-V\VHDs\SRV-01.vhdx"

# On ne peut pas tout faire à la création, donc modif de la VM après création

Set-VM -VMName "SRV-01" -DynamicMemory -ProcessorCount 2

# Utilisation de variables
# Copie du VHD "modèle"
# Utilisation de regions pour simplifier la navigation

#Nom VM
$NomVM = "SRV-02"
$Generation = 2

#region VM

$cheminVHD = "D:\Hyper-V\VHDs\" + $NomVM + ".vhdx"

Copy-Item -Path "D:\Hyper-V\VHDs\_SRV.vhdx" -Destination $cheminVHD

# Création VM !!! Le VHD doit exister

New-VM -VMName $NomVM -Generation $Generation -MemoryStartupBytes 512MB -VHDPath $cheminVHD 

# On ne peut pas tout faire à la création, donc modif de la VM après création

Set-VM -VMName $NomVM -DynamicMemory -ProcessorCount 2 -CheckpointType ProductionOnly
#endregion VM 

#Nom VM
$NomVM = "SRV-03"
$Generation = 2

#region VM

$cheminVHD = "D:\Hyper-V\VHDs\" + $NomVM + ".vhdx"

Copy-Item -Path "D:\Hyper-V\VHDs\_SRV.vhdx" -Destination $cheminVHD

# Création VM !!! Le VHD doit exister

New-VM -VMName $NomVM -Generation $Generation -MemoryStartupBytes 512MB -VHDPath $cheminVHD

# On ne peut pas tout faire à la création, donc modif de la VM après création

Set-VM -VMName $NomVM -DynamicMemory -ProcessorCount 2 -CheckpointType ProductionOnly
#endregion VM 

#Nom VM
$NomVM = "RTR-01"
$Generation = 2
$typeOS = "D:\Hyper-V\VHDs\_CORE.vhdx"

#region VM

$cheminVHD = "D:\Hyper-V\VHDs\" + $NomVM + ".vhdx"

Copy-Item -Path $typeOS -Destination $cheminVHD

# Création VM !!! Le VHD doit exister

New-VM -VMName $NomVM -Generation $Generation -MemoryStartupBytes 512MB -VHDPath $cheminVHD

# On ne peut pas tout faire à la création, donc modif de la VM après création

Set-VM -VMName $NomVM -DynamicMemory -ProcessorCount 2 -CheckpointType ProductionOnly

Add-VMNetworkAdapter -VMName $NomVM
Add-VMNetworkAdapter -VMName $NomVM
#endregion VM 

#Nom VM
$NomVM = "RTR-02"
$Generation = 2
$typeOS = "D:\Hyper-V\VHDs\_CORE.vhdx"

#region VM

$cheminVHD = "D:\Hyper-V\VHDs\" + $NomVM + ".vhdx"

Copy-Item -Path $typeOS -Destination $cheminVHD

# Création VM !!! Le VHD doit exister

New-VM -VMName $NomVM -Generation $Generation -MemoryStartupBytes 512MB -VHDPath $cheminVHD

# On ne peut pas tout faire à la création, donc modif de la VM après création

Set-VM -VMName $NomVM -DynamicMemory -ProcessorCount 2 -CheckpointType ProductionOnly

Add-VMNetworkAdapter -VMName $NomVM
#endregion VM 

#Nom VM
$NomVM = "RTR-03"
$Generation = 2
$typeOS = "D:\Hyper-V\VHDs\_CORE.vhdx"

#region VM

$cheminVHD = "D:\Hyper-V\VHDs\" + $NomVM + ".vhdx"

Copy-Item -Path $typeOS -Destination $cheminVHD

# Création VM !!! Le VHD doit exister

New-VM -VMName $NomVM -Generation $Generation -MemoryStartupBytes 512MB -VHDPath $cheminVHD

# On ne peut pas tout faire à la création, donc modif de la VM après création

Set-VM -VMName $NomVM -DynamicMemory -ProcessorCount 2 -CheckpointType ProductionOnly

Add-VMNetworkAdapter -VMName $NomVM
#endregion VM 

#Nom VM
$NomVM = "CLI-01"
$Generation = 2
$typeOS = "D:\Hyper-V\VHDs\_CLI.vhdx"

#region VM

$cheminVHD = "D:\Hyper-V\VHDs\" + $NomVM + ".vhdx"

Copy-Item -Path $typeOS -Destination $cheminVHD

# Création VM !!! Le VHD doit exister

New-VM -VMName $NomVM -Generation $Generation -MemoryStartupBytes 512MB -VHDPath $cheminVHD

# On ne peut pas tout faire à la création, donc modif de la VM après création

Set-VM -VMName $NomVM -DynamicMemory -ProcessorCount 2 -CheckpointType ProductionOnly
#endregion VM 

#Nom VM
$NomVM = "CLI-02"
$Generation = 2
$typeOS = "D:\Hyper-V\VHDs\_CLI.vhdx"

#region VM

$cheminVHD = "D:\Hyper-V\VHDs\" + $NomVM + ".vhdx"

Copy-Item -Path $typeOS -Destination $cheminVHD

# Création VM !!! Le VHD doit exister

New-VM -VMName $NomVM -Generation $Generation -MemoryStartupBytes 512MB -VHDPath $cheminVHD

# On ne peut pas tout faire à la création, donc modif de la VM après création

Set-VM -VMName $NomVM -DynamicMemory -ProcessorCount 2 -CheckpointType ProductionOnly
#endregion VM 

#Nom VM
$NomVM = "CLI-03"
$Generation = 2
$typeOS = "D:\Hyper-V\VHDs\_CLI.vhdx"

#region VM

$cheminVHD = "D:\Hyper-V\VHDs\" + $NomVM + ".vhdx"

Copy-Item -Path $typeOS -Destination $cheminVHD

# Création VM !!! Le VHD doit exister

New-VM -VMName $NomVM -Generation $Generation -MemoryStartupBytes 512MB -VHDPath $cheminVHD

# On ne peut pas tout faire à la création, donc modif de la VM après création

Set-VM -VMName $NomVM -DynamicMemory -ProcessorCount 2 -CheckpointType ProductionOnly
#endregion VM 