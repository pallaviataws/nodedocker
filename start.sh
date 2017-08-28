cd /tmp

# try to remove the repo if it already exists
rm -rf nodedocker; true

git clone https://github.com/pallaviataws/nodedocker.git

cd nodedocker

CMD [ "npm", "start" ]