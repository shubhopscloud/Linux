function_name="$1"
path="$2"
directory_name="$3"

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

case "$function_name" in 
  "addDir")
  addDir "$path" "$directory_name";;
  "removeDir")
  removeDir "$path" "$directory_name";;	
  "listContent")
  listContent "$path";;
*)
  echo "Nthg executed"
  exit 1;;
esac
