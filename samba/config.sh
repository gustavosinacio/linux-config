sudo apt install -y samba cifs-utils && \
echo "Setting share on ~/Downloads folder"

mkdir /home/gustavo/Transfer 

sudo sh -c "echo '
[Downloads]
   comment = Download folder
   path = /home/gustavo/Downloads
   read only = no
   guest ok = no

[Transfer]
   comment = Transfer folder
   path = /home/gustavo/Transfer
   read only = no
   guest ok = yes
' >> /etc/samba/smb.conf" && \

sudo /etc/init.d/smbd restart