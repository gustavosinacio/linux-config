sudo smbpasswd -a gustavo

mkdir $HOME/Transfer

sudo sh -c "echo '
[Downloads]
   comment = Download folder
   path = $HOME/Downloads
   read only = no
   guest ok = no

[Transfer]
   comment = Transfer folder
   path = $HOME/Transfer
   read only = no
   guest ok = yes
' >> /etc/samba/smb.conf" && \

sudo /etc/init.d/smbd restart
