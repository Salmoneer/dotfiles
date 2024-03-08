echo $(mpstat 1 1 | awk 'NR==5 { printf "%.0f", 100 - $12 }')
