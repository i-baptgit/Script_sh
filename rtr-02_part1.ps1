#Config RTR-02

$NomMachine = "Rtr-02"

#Renommer Carte (utile sur machine mono-carte ?)

Rename-NetAdapter -Name "Ethernet" -NewName "Londres"
Rename-NetAdapter -Name "Ethernet 2" -NewName "WAN"

#Affectation IP

netsh interface ipv4 set address "Londres" source=static 10.0.128.254/24 
netsh interface ipv4 set address "WAN" source=static 10.0.255.253/24 


#Config DNS

netsh interface ipv4 set dnsservers "WAN" source=static 10.0.16.10 validate=no

#Activer Forwarding

netsh interface ipv4 set interface "Londres" forwarding=enabled
netsh interface ipv4 set interface "WAN" forwarding=enabled

#Ajout de routes

#Paris
route add -p 10.0.16.0/24 10.0.255.252
route add -p 10.0.32.0/24 10.0.255.252

#Route par défaut
route add -p 0.0.0.0/0 10.0.255.254

#Autoriser Ping (v4, et v6 ?)

Enable-NetFirewallRule -Name "*erq-in"

#Ajout des roles

Install-WindowsFeature "Routing" -IncludeManagementTools

#Nommer Machine

Rename-Computer $NomMachine -Restart -Confirm #Attention, si restart, on ne vera pas d'éventuelles erreurs...

