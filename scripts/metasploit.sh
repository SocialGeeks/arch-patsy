#!/bin/sh

echo *************************************************************************
echo [+] Installing metasploit and armitage
echo *************************************************************************
sleep 3;

# https://wiki.archlinux.org/index.php/Metasploit_Framework#Installation

curl -L get.rvm.io > /home/vagrant/rvm-install
chown vagrant /home/vagrant/rvm-install
SHASUM=$(sha1sum /home/vagrant/rvm-install | awk '{print $1}')
if [[ $SHASUM != "bbd3ed8cc510d953337f81e65fdc819033390a19" ]]; then exit 1; fi

# http://stackoverflow.com/questions/36185209/rvm-installing-ruby-error-on-arch-linux
curl https://github.com/ruby/ruby/commit/801e1fe46d83c856844ba18ae4751478c59af0d1.diff > /home/vagrant/openssl.patch
SHASUM=$(sha1sum /home/vagrant/openssl.patch | awk '{print $1}')
if [[ $SHASUM != "752faff577f5fadee7b667680c7d67dc9d13bdd8" ]]; then exit 1; fi

cd /home/vagrant

sudo -u vagrant bash ./rvm-install
sudo -u vagrant bash /home/vagrant/.rvm/bin/rvm install --patch ./openssl.patch 2.1.5
sudo -u vagrant bash /home/vagrant/.rvm/bin/rvm use 2.1.5 --default

pacman --noconfirm -S metasploit
pacman --noconfirm -S armitage

pacman --noconfirm -S metasploit-msfupdate

cd /var/lib/postgres

sudo -u postgres initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data'

systemctl enable postgresql.service
systemctl start postgresql

sudo -u postgres createuser -d msf
sudo -u postgres createdb -U msf msf

sudo -u vagrant mkdir /home/vagrant/.msf4
cat > /home/vagrant/.msf4/database.yml<<EOF
production:
  adapter: postgresql
  database: msf
  username: msf
  password:
  host: localhost
  port: 5432
  pool: 5
  timeout: 5
EOF

