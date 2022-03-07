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
"echo `date` nginx kapalıdır">>alerts
else
cd /tmp
touch alerts
"echo `date` nginx kapalıdır">>alerts
fi 
fi
EOF
