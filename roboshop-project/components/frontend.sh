
## yum install nginx -y
## systemctl enable nginx
## systemctl start nginx
#
#```
#
#Let's download the HTDOCS content and deploy under the Nginx path.
#
#```
## curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
#
#```
#
#Deploy in Nginx Default Location.
#
#```
## cd /usr/share/nginx/html
## rm -rf *
## unzip /tmp/frontend.zip
## mv frontend-main/* .
## mv static/* .
## rm -rf frontend-main README.md
## mv localhost.conf /etc/nginx/default.d/roboshop.conf
#
#```
#
#Finally restart the service once to effect the changes.
#
#...
## systemctl restart nginx
#
#...

rm -f /tmp/roboshop.log

echo "Installing NGINX"
yum install nginx -y >>/tmp/roboshop.log

echo "Download Frontend Content"
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip" >>/tmp/roboshop.log