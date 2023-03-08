#!/bin/bash
sudo yum update -y
sudo yum install -y httpd.x86_64
sudo systemctl enable httpd.service
echo "<h1>this is a AWS EC2, Hello there</h1>" > /var/www/html/index.html
sudo systemctl start httpd.service