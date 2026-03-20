#!/bin/bash
# Chuyển đổi tên file sang snake_case, không dấu và lowercase.
# Cách dùng: ./rename_snake_case.sh /đường/dẫn/đến/file_hoặc_folder

input="$1"

if [ -z "$input" ]; then
    echo "Usage: $0 <path>"
    exit 1
fi

# Hàm chuyển đổi tiếng Việt không dấu
convert_vn() {
    local str="$1"
    str=$(echo "$str" | sed 'y/áàảãạăắằẳẵặâấầẩẫậ/aaaaaaaaaaaaaaa/')
    str=$(echo "$str" | sed 'y/ÁÀẢÃẠĂẮẰẲẴẶÂẤẦẨẫẬ/aaaaaaaaaaaaaaa/')
    str=$(echo "$str" | sed 'y/éèẻẽẹêếềểễệ/eeeeeeeeeee/')
    str=$(echo "$str" | sed 'y/ÉÈẺẼẸÊẾỀỂỄỆ/eeeeeeeeeee/')
    str=$(echo "$str" | sed 'y/íìỉĩị/iiiii/')
    str=$(echo "$str" | sed 'y/ÍÌỈĨỊ/iiiii/')
    str=$(echo "$str" | sed 'y/óòỏõọôốồổỗộơớờởỡợ/ooooooooooooooooo/')
    str=$(echo "$str" | sed 'y/ÓÒỎÕỌÔỐỒỔỖỘƠỚỜỞỠỢ/ooooooooooooooooo/')
    str=$(echo "$str" | sed 'y/úùủũụưứừửữự/uuuuuuuuuuu/')
    str=$(echo "$str" | sed 'y/ÚÙỦŨỤƯỨỪỬỮỰ/uuuuuuuuuuu/')
    str=$(echo "$str" | sed 'y/ýỳỷỹỵ/yyyyy/')
    str=$(echo "$str" | sed 'y/ÝỲỶỸỴ/yyyyy/')
    str=$(echo "$str" | sed 'y/đ/d/')
    str=$(echo "$str" | sed 'y/Đ/d/')
    echo "$str"
}

# Lấy thông tin file
dir=$(dirname "$input")
base=$(basename "$input")

# Chuyển đổi
new_base=$(convert_vn "$base")
new_base=$(echo "$new_base" | tr '[:upper:]' '[:lower:]')
new_base=$(echo "$new_base" | sed -e 's/[^a-z0-9.]/_/g' -e 's/_{2,}/_/g' -e 's/^_//' -e 's/_$//')

# Đổi tên nếu khác nhau
if [ "$base" != "$new_base" ]; then
    mv -v "$input" "$dir/$new_base"
fi
