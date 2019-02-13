#!/bin/bash
read -p "Enter Username: " u_name
git config --global user.name "$u_name"
read -p "Enter Email: " u_email
git config --global user.email "$u_email"
read -p "Enter Commit Msg: " send_msg
git add .
git commit -m "$send_msg"
touch "$u_name".txt
echo "$u_name" >> "$u_name".txt
git push http://github.com/TheDemonfish/Capstone master << `"$u_name".txt'

wait ${!}
echo "done"$'\r'
sleep 10