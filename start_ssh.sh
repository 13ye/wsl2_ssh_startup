cd 

windows_frpc_dir="/path/to/frp_windows_amd64/"

ip=$(ifconfig | grep 'inet 172' | tr -s ' ' | cut -d ' ' -f3)
ip=$(echo $ip | cut -d ' ' -f2)
echo $ip
# restore original
cp frpc.ini_temp frpc.ini
# generate new config
sed "s/ip_temp/$ip/g" -i frpc.ini
# copy this config file to windows
cp frpc.ini "$windows_frpc_dir"

service ssh start
service docker start
