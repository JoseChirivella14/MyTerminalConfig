#! /bin/bash

INTERFACES=( $(ifconfig | awk '/^[[:alnum:]]+/{ print $1 }' | awk '{split($0,a,":"); print a[1]}' | xargs) )

for i in "${INTERFACES[@]}"
do
    if [[ "$i" == "en0" ]]; then
        printf "The ip address for the %s interface port has been copied to the system clipboard in mac os x\n" $i
        ifconfig $i | grep -w inet | awk '{ print $2 }' | tr -d '\n' | pbcopy
        break
    elif [[ "$i" == "eth0" ]]; then
        ifconfig $i | grep -w inet | awk '{ print $2 }' | awk '{split($0,a,":"); print a[2]}'
        break
    fi
done
