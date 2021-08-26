rm -R -f Domo-Com-Server-master
rm  -f master.zip
echo "Getting last version"
wget https://github.com/Domo-Com/Domo-Com-Server/archive/refs/heads/master.zip
unzip ./master.zip
cd  Domo-Com-Server-master/
unzip homecheck-master.zip
cd homecheck-master
Directory="/var/www/yana-server/plugins/HomeCheck/"
### To check if it's not exists
if [ ! -d "$Directory" ];
then 
	echo "create HomeCheck\n"
	mkdir /var/www/yana-server/plugins/HomeCheck/
fi
echo "Copying Homecheck"
cp ./* /var/www/yana-server/plugins/HomeCheck/ -f -r
sudo chown -R www-data:www-data /var/www/yana-server/plugins/HomeCheck/
sudo chmod -R 775 /var/www/yana-server/plugins/HomeCheck/
sudo usermod -a -G video www-data
echo "Done"