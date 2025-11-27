#!/bin/bash

bar=" ▂▃▄▅▆▇█"
dict="s/;//g;"

i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

# --- SỬA ĐOẠN NÀY ---
cava -p ~/.config/cava/config_waybar | sed -u "$dict" | while read -r line; do
    trimmed="${line// /}"
    
    if [ -z "$trimmed" ]; then
        # Nếu im lặng, in rỗng để ẩn. 
        # Thêm "|| exit 1" để nếu Waybar tắt, script cũng tắt luôn
        echo "" || exit 1 
    else
        # Nếu có nhạc, in sóng
        # Thêm "|| exit 1" để tránh lỗi Broken pipe
        echo "$line" || exit 1 
    fi
done