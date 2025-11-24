#!/bin/bash

# Ký tự thanh sóng (lưu ý ký tự đầu tiên là khoảng trắng cho số 0)
bar=" ▂▃▄▅▆▇█"
dict="s/;//g;"

# Tạo từ điển để sed thay thế số thành ký tự
i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

# Chạy Cava -> Pipe qua Sed -> Đọc từng dòng
cava -p ~/.config/cava/config_waybar | sed -u "$dict" | while read -r line; do
    # Xóa tất cả khoảng trắng trong dòng
    trimmed="${line// /}"
    
    # Nếu sau khi xóa khoảng trắng mà chuỗi rỗng (tức là toàn bộ là im lặng)
    if [ -z "$trimmed" ]; then
        echo "" # In ra rỗng để Waybar ẩn module
    else
        echo "$line" # Có tiếng thì in ra
    fi
done