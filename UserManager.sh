task="$1"
group="$2"
groupToAddUser="$3"
user="$2"
shell="$3"

addGroup() {
  local group="$1"
  groupadd "$group"
}

addUser(){
  local user="$1"
  local groupToAddUser="$2"
  useradd "$user"
  usermod -aG "$groupToAddUser" "$user"
}

changeShell(){
  local user="$1"
  local shell="$2"
  chsh -s "$shell" "$user"
}

changeUserPassword(){
  local user="$1"
  passwd "$user" 
}

deleteUser(){
  local user="$1"
  userdel -r "$user"
}

deleteGroup(){
  local group="$1"
  groupdel "$group"
}

listGroup(){
  getent group | awk -F: '{print $1}'
}

listUser(){
  getent passwd | awk -F: '{print $1}'
}

case "$task" in 
	"addGroup")
	addGroup "$group";;
	"addUser")
	addUser "$user" "$groupToAddUser";;
	"changeShell")
	changeShell "$user" "$shell";; 
	"changeUserPassword")
	changeUserPassword "$user" "$password";;
	"deleteUser")
	deleteUser "$user";;
	"deleteGroup")
	deleteGroup "$group";;
	"listGroup")
	listGroup;;
	"listUser")
	listUser;;
  *)
	  echo "enter correct command"
   ;;
esac
