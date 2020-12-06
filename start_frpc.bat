:: this is bat script of windows, need be set as a machine startup service (without logon!)
wsl -d Ubuntu-20.04 -u root /etc/init.wsl start
wsl -d Ubuntu-18.04 -u root /etc/init.wsl start
cd \path\to\windows_frp
.\frpc.exe -c .\frpc.ini
