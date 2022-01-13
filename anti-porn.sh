r="\e[0;91m"  #> red
bo="\e[1m" #> bold
rt="\e[0m" #> reset
g="\e[0;92m" #> green
u="\e[4m" #> uline
SE=${r}${bo}[${rt}${y}${bo}!${rt}${r}${bo}]${rt}${w}${bo}${u} #Start Exclamation error 
EE=${rt}${r}${bo}[${rt}${y}${bo}!${rt}${r}${bo}]${rt} #End of Exclamation error 

user=`whoami`
if [ "$user" == "root" ]; then
    cat Hosts.txt >> /etc/hosts
    chattr +i -V /etc/hosts
    systemctl restart NetworkManager
    cd ${HOME}
    clear
    else : 
        clear
        sleep 1
        echo -e "\n${SE} You Should Be Root User ${EE}\n"
fi
    
