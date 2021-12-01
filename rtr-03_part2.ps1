# Post-reboot : Sur serveur Core l'installation de "Routing" nécéssite un redémarrage (d'où 'Part2' :))

Set-Service "RemoteAccess" -StartupType Automatic
Start-Service "RemoteAccess" 

# Routeur opérationnel

# Ajouter les services

# Configuration agent relais


netsh.exe routing ip nat install
netsh.exe routing ip nat add int "External" Full
netsh.exe routing ip nat add interface "Wan" private

# Autoriser ping

Enable-NetFirewallRule "*erq-in"  



