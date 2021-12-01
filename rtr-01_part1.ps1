#Config RTR-01

$NomMachine = "Rtr-01"

#Renommer Carte (utile sur machine mono-carte ?)

Rename-NetAdapter -Name "Ethernet" -NewName "Paris-Serveurs"
Rename-NetAdapter -Name "Ethernet 2" -NewName "Paris-Clients"
Rename-NetAdapter -Name "Ethernet 3" -NewName "WAN"

#Affectation IP

netsh interface ipv4 set address "Paris-Serveurs" source=static 10.0.16.254/24 
netsh interface ipv4 set address "Paris-Clients" source=static 10.0.32.254/24 
netsh interface ipv4 set address "WAN" source=static 10.0.255.252/24 


#Config DNS

netsh interface ipv4 set dnsservers "WAN" source=static 10.0.16.10 validate=no

#Activer Forwarding

netsh interface ipv4 set interface "Paris-Serveurs" forwarding=enabled
netsh interface ipv4 set interface "Paris-Clients" forwarding=enabled
netsh interface ipv4 set interface "WAN" forwarding=enabled

#Ajout de routes

#Londres
route add -p 10.0.128.0/24 10.0.255.253

#Route par défaut
route add -p 0.0.0.0/0 10.0.255.254

#Autoriser Ping (v4, et v6 ?)

Enable-NetFirewallRule -Name "*erq-in"

#Ajout des roles

Install-WindowsFeature "Routing" -IncludeManagementTools

#Nommer Machine

Rename-Computer $NomMachine -Restart -Confirm #Attention, si restart, on ne vera pas d'éventuelles erreurs...

