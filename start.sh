cd /tmp

# try to remove the repo if it already exists
rm -rf nodedocker; true

git clone nodedocker

cd nodedocker

npm install

node .