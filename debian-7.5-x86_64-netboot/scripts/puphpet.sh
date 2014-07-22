#!/bin/bash

groupadd www-data
useradd -g www-data www-data

mkdir -p '/.puphpet-stuff/shell'

wget --quiet --tries=5 --connect-timeout=10 --no-check-certificate  -O '/.puphpet-stuff/shell/os-detect.sh' 'https://raw.github.com/puphpet/puphpet/master/src/Puphpet/MainBundle/Resources/views/manifest/puphpet/shell/os-detect.sh'
wget --quiet --tries=5 --connect-timeout=10 --no-check-certificate  -O '/.puphpet-stuff/shell/initial-setup.sh' 'https://raw.github.com/puphpet/puphpet/master/src/Puphpet/MainBundle/Resources/views/manifest/puphpet/shell/initial-setup.sh'
wget --quiet --tries=5 --connect-timeout=10 --no-check-certificate  -O '/.puphpet-stuff/shell/install-ruby.sh' 'https://raw.github.com/puphpet/puphpet/master/src/Puphpet/MainBundle/Resources/views/manifest/puphpet/shell/install-ruby.sh'
wget --quiet --tries=5 --connect-timeout=10 --no-check-certificate  -O '/.puphpet-stuff/shell/install-puppet.sh' 'https://raw.github.com/puphpet/puphpet/master/src/Puphpet/MainBundle/Resources/views/manifest/puphpet/shell/install-puppet.sh'

chmod +x '/.puphpet-stuff/shell/os-detect.sh'
chmod +x '/.puphpet-stuff/shell/initial-setup.sh'
chmod +x '/.puphpet-stuff/shell/install-ruby.sh'
chmod +x '/.puphpet-stuff/shell/install-puppet.sh'

source '/.puphpet-stuff/shell/initial-setup.sh' '/.puphpet-stuff'
source '/.puphpet-stuff/shell/install-ruby.sh'
source '/.puphpet-stuff/shell/install-puppet.sh'
