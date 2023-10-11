template=$(<"$1")
template=$(echo "$template" | sed "s/{{fname}}/$2/g; s/{{topic}}/$3/g")
echo "$template"

