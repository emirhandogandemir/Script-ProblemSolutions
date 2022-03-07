#/bin/sh

bash <<'EOF'
nginxStatus=`systemctl is-active nginx.service`
 
if [ "`echo $nginxStatus`" = "active" ]; then
echo "nginx is active"
else 

FILE=/tmp/alerts
if [ -f "$FILE" ]; then
echo "$FILE exist"
cd /tmp
date >> alerts
echo "nginx kapalıdır" >> alerts
else
cd /tmp
touch alerts
date >> alerts
echo "nginx kapalıdır" >> alerts
fi 
fi
EOF
