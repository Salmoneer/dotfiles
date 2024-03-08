VOLUME=$(wpctl status | grep "CORSAIR" | grep "MUTED]" | wc -l)

if [ $VOLUME -eq 1 ]; then
    echo -n "󰍭 "
else
    echo -n "󰍬 "
fi

echo $(wpctl get-volume @DEFAULT_SOURCE@ | awk '{print $2*100}')
