#!/bin/bash
tmp_dir=$(mktemp -d -t ci-XXXXXXXXXX)
Directory="/var/www/yana-server/plugins/HomeTest/"
echo $tmp_dir
rm -R -f Domo-Com-Server-master
rm  -f master.zip
echo "Getting last version"
wget -P "$tmp_dir" https://github.com/Domo-Com/Domo-Com-Server/archive/refs/heads/master.zip
cd $tmp_dir
unzip $tmp_dir/master.zip
cd  $tmp_dir/Domo-Com-Server-master/
unzip homecheck-master.zip
cd homecheck-master

### To check if it's not exists
if [ ! -d "$Directory" ];
then 
	echo "create HomeCheck\n"
	mkdir "$Directory"
fi
echo "Copying $Directory"
cp ./* "$Directory" -f -r
sudo chown -R www-data:www-data "$Directory"
sudo chmod -R 775 "$Directory"
sudo usermod -a -G video www-data
rm -rf $tmp_dir
echo "Done"
