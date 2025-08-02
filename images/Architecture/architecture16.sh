keyword="architecture"
i=1
for file in *; do
  if [ -f "$file" ]; then
    ext="${file##*.}"
    mv -- "$file" "${keyword}${i}.${ext}"
    ((i++))
  fi
done
