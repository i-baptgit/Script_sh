# Post-reboot : Sur serveur Core l'installation de "Routing" nécéssite un redémarrage (d'où 'Part2' :))

Set-Service "RemoteAccess" -StartupType Automatic
Start-Service "RemoteAccess" 

# Routeur opérationnel
# Ajouter les services

# Configuration agent relais

netsh.exe routing ip relay install
netsh.exe routing ip relay add dhcpserver 10.0.16.20
netsh.exe routing ip relay add interface "Wan"
netsh.exe routing ip relay add interface "Londres"

# Autoriser ping

Enable-NetFirewallRule "*erq-in"  



