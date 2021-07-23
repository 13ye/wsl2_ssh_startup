# Preparing
1. windows prepare frp dir, wsl modify ssh port in '/etc/ssh/sshd_config'
2. wsl prepare executable /etc/init.wsl
3. edit frpc.ini_temp for wsl newer ports
4. put frpc.ini_temp under wsl /root/
5. windows set bat as startup programs

# Running
1. windows startup
2. windows start bat program
    2.1. start wsl
    2.2. wsl call init.wsl, edit frpc config with wsl inner ip
    2.3 wsl cp frpc config to windows dir
    2.4 windows start frpc
3. connection ports of and wsls are exposed 
4. (windows rdp should be exposed by yourself under windows env)
