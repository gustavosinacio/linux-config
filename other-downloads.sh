wget https://github.com/tonsky/FiraCode/releases/download/1.206/FiraCode_1.206.zip

unzip *.zip -d fira #->> => => <->

mkdir ~/.fonts

cp fira/ttf/* ~/.fonts 

fc-cache -f -v

rm -r fira

rm *FiraCode*