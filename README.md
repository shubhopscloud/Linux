<h1>Starting with the Linux assignment 1</h1>
<h2>Task1<h2>
<h3>Add dir</h3>
<h3>Remove dir</h3>
<h3>List all content</h3>
<h3>List only files</h3>
<h3>List only directories</h3>

./FileManager.sh addDir /tmp dir1
./FileManager.sh addDir /tmp dir2
./FileManager.sh addDir /tmp dir3
./FileManager.sh listFiles /tmp
./FileManager.sh listDirs /tmp
./FileManager.sh listAll /tmp
./FileManager.sh deleteDir /tmp dir3

<h2>Task2</h2>
<h3>Create a file</h3>
<h3>Add content to file</h3>
<h3>Add additional content to file</h3>
<h3>Add content at the beginning of the file</h3>
<h3>Print only first N lines of file</h3>
<h3>Print only last N lines of file</h3>
<h3>Print content between 2 lines</h3>
<h3>Print content of specific line</h3>
<h3>Move file</h3>
<h3>Copy file</h3>
<h3>clear file content</h3>
<h3>delete file</h3>

./FileManager.sh addFile /tmp/dir1 file1.txt
./FileManager.sh addFile /tmp/dir1 file1.txt "Initial Content"
./FileManager.sh addContentToFile /tmp/dir1 file1.txt "Additional Content"
./FileManager.sh addContentToFileBegining /tmp/dir1 file1.txt "Additional Content"
./FileManager.sh showFileBeginingContent /tmp/dir1 file1.txt 5
./FileManager.sh showFileEndContent /tmp/dir1 file1.txt 5
./FileManager.sh showFileContentAtLine /tmp/dir1 file1.txt 10
./FileManager.sh showFileContentForLineRange /tmp/dir1 file1.txt 5 10
./FileManager.sh moveFile /tmp/dir1/file1.txt /tmp/dir1/file2.txt
./FileManager.sh moveFile /tmp/dir1/file2.txt /tmp/dir2/
./FileManager.sh copyFile /tmp/dir2/file2.txt /tmp/dir1/
./FileManager.sh copyFile /tmp/dir1/file2.txt /tmp/dir1/file3.txt
./FileManager.sh clearFileContent /tmp/dir1 file3.txt
./FileManager.sh deleteFile /tmp/dir1 file2.txt


<h1>Assignment 2 on User Management</h1>

<h3>addUserToGroup</h3>
<h3>addGroup</h3>
<h3>changeUserShell</h3>
<h3>changeUserPassword</h3>
<h3>deleteUser</h3>
<h3>deleteGroup</h3>
<h3>listUser</h3>
<h3>listGroup</h3>

./UserManager.sh addGroup team1
./UserManager.sh addUser Shubham team1
./UserManager.sh deleteGroup team1
./UserManager.sh deleteUser Shubham
./UserManager.sh changePasswd Shubham
./UserManager.sh changeShell Shubham /bin/bash
./UserManager.sh listUser
./UserManager.sh listGroup
