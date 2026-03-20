#!/bin/bash
# Đếm số lượng file trong một thư mục (đệ quy)
# Cách dùng: ./count_files.sh /đường/dẫn/đến/folder

if [ -z "$1" ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Error: Directory $1 not found."
  exit 1
fi

find "$1" -type f | wc -l | xargs
