function_name="$1"
path="$2"
path1="$2"
path2="$3"
directory_name="$3"
file_name="$3"
file_content="$4"
number="$4"
to="$4"
from="$5"

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

showFileContentAtLine() {
  local path="$1"
  local file_name="$2"
  local number="$3"
  head -n $number "$path/$file_name" | tail -n 1 
}

showFileContentForLineRange() {
  local path="$1"
  local file_name="$2"
  local total=$(wc -l < "$path/$file_name")
  local from="$3"
  local to="$4"
  tail -n -$((total - from + 1)) "$path/$file_name" | head -n +$((total - to))
}

moveFile(){
  local path1="$1"
  local path2="$2"
  mv "$path1" "$path2"
}

copyFile(){
  local path1="$1"
  local path2="$2"
  cp "$path1" "$path2"
}

clearFileContent() {
  local path="$1"
  local file_name="$2"
  echo "" > "$path/$file_name"
}

deleteFile() {
  local path="$1"
  local file_name="$2"
  rm -f "$path/$file_name"
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
  "showFileContentForLineRange")
  showFileContentForLineRange "$path" "$file_name" "$to" "$from";;
  "showFileContentAtLine")
  showFileContentAtLine "$path" "$file_name" "$number";;
  "moveFile")
  moveFile "$path1" "$path2";;	
  "copyFile")
  copyFile "$path1" "$path2";;
  "clearFileContent")
  clearFileContent "$path" "$file_name";;
  "deleteFile")
  deleteFile "$path" "$file_name";;
*)
  echo "Nthg executed"
  exit 1;;
esac
