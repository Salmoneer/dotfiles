echo "$(free -h | awk '/^Mem/ {printf "%.1f", $3}') / $(free -h | awk '/^Mem/ {printf "%.0f", $2}')GB"
