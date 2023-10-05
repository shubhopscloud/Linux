function_name="$1"
path="$2"
directory_name="$3"
file_name="$3"
file_content="$4"
number="$4"

addDir() {
  local path="$1"
  local directory_name="$2"
  cd $path
  mkdir $directory_name
}

removeDir() {
  local path="$1"
  local directory_name="$2"
  cd $path
  rm -rf $directory_name
}

listContent() {
  local path="$1"
  ls -l "$path"
}

listFiles() {
  local path="$1"
  ls -p "$path" | grep -v /
}

listDirectories() {
  local path="$1"
  ls -p "$path" | grep /
}

addFile() {
  local path="$1"
  local file_name="$2"
  touch "$file_name" "$path"
}

addFileContent() {
  local path="$1"
  local file_name="$2"
  local file_content="$3"
  echo "$file_content/$path/$file_name"
  echo "$file_content" > "$path/$file_name"
}

addFileAdditionalContent() {
  local path="$1"
  local file_name="$2"
  local file_content="$3"
  echo "$file_content" >> "$path/$file_name"
}

addFileAdditionalInitialContent() {
  local path="$1"
  local file_name="$2"
  local file_content="$3"
  echo "$file_content" | cat - "$path/$file_name" > temp && mv temp "$path/$file_name"
}

topNLinesOfFile() {
  local path="$1"
  local file_name="$2"
  cat "$path/$file_name" | head -n "$number"
}

lastNLinesOfFile() {
  local path="$1"
  local file_name="$2"
  cat "$path/$file_name" | tail -n "$number"
}

case "$function_name" in 
  "addDir")
  addDir "$path" "$directory_name";;
  "removeDir")
  removeDir "$path" "$directory_name";;	
  "listContent")
  listContent "$path";;
  "listFiles")
  listFiles "$path";;
  "listDirectories")
  listDirectories "$path";;
  "addFile")
  addFile "$path" "$file_name";;
  "addFileContent")
  addFileContent "$path" "$file_name" "$file_content";;
  "addFileAdditionalContent")
  addFileAdditionalContent "$path" "$file_name" "$file_content";;
  "addFileAdditionalInitialContent")
  addFileAdditionalInitialContent "$path" "$file_name" "$file_content";;
  "topNLinesOfFile")
  topNLinesOfFile "$path" "$file_name" "$number";;
  "lastNLinesOfFile")
  lastNLinesOfFile "$path" "$file_name" "$number";;
*)
  echo "Nthg executed"
  exit 1;;
esac
