#set -xe
sudo apt update
sudo apt-get install build-essential
cd /usr/local/src
curl -o noip https://www.noip.com/client/linux/noip-duc-linux.tar.gz
tar xzf noip
cd noip-2.1.9-1
make
make install
/usr/local/bin/noip2 2>>/dev/null
echo "append this to cronjobs --->  @reboot /usr/local/bin/noip2"
read -n 1 -s -r -p "Press Enter to open the cronjob list and append the above line there..."
echo -e "\n"
sudo crontab -e 2>>/dev/null
echo -e "Finished\n"