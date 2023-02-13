# Useful Aliases
#### from https://aruva.medium.com/100-bash-aliases-for-supersonic-productivity-d54a796422d9


Download/clone the repo (edit them) and add them to your current `rc` file of choice
  - `source ~/.aliases`
or use the install script.


### Regular Shell Commands
`alias ..='cd ..'`
> This allows you to navigate up one directory level quickly

`alias ...='cd ../..'`
> This allows you to navigate up to two directory levels quickly.

`alias ll='ls -al'`
> This is an alias for the ls -al command, which shows all files and directories in a long format

`alias lr='ls -ltr'`
> This will show all files sorted by modification date, the most recent first.

`alias grep='grep --color=auto'`
> This is an alias for the grep --color=auto command, which highlights the search results

`alias ports='netstat -a | grep -i "listen"’`
> This will show all open ports and the processes using them.

`alias search='function __search() { grep -r --exclude-dir={.git,.svn} $1 *; }; __search'`
> This recursively searches for a specified string in all files in the current directory and its subdirectories, excluding version control directories

`alias reload='source ~/.zshrc'`
> This is an alias for the source ~/.zshrc command, which reloads the bash configuration file.  This is useful if you have made changes to your bash profile and need to reload it without logging out and logging back in.

`alias dfh='df -h'`
> This is an alias for df -h the command which shows disk usage in a human-readable format.

`alias c='clear'`
> This allows you to clear the terminal screen with a simple command.

`alias h='history'`
> This allows you to view your command history quickly.

`alias cp='cp -i'`
> This adds the -i flag to the cp command, which prompts for confirmation before overwriting an existing file.

`alias cpr='rsync --progress -avz --ignore-existing'`
> This adds a progress bar and verbose output to rsync the command, which is more efficient than cp when copying a large number of files over a network.

`alias rm='rm -i'`
> This adds the -i flag to the rm command, which prompts for confirmation before deleting a file.

`alias mv='mv -i'`
> This adds the -i flag to the mv command, which prompts for confirmation before overwriting an existing file.

`alias top='htop'`
> This is an alias for the htop command, which is an interactive process viewer.

`alias backup='tar -zcvf $(date +%Y%m%d).tar.gz *'`
> This creates a tarball of the current directory, compressed with gzip, with the filename in the format yyyymmdd.tar.gz.

`alias update='sudo apt-get update && sudo apt-get upgrade -y'`
> This updates and upgrades all the packages on the system using the apt package manager.

`alias path='echo -e ${PATH//:/\\n}'`
> This shows all directories in the PATH variable, one per line.

`alias tree='tree -C --dirsfirst'`
> This will show a tree-like structure of the current directory, with directories being shown first.

`alias process='ps aux'`
> This shows the process tree

`alias publicip='curl ifconfig.me'`
> This shows your public IP address

`alias extract='for i in *.gz; do tar xvf $i; done'`
> This extracts all files in the current directory with the .gz extension

`alias du1='du -h -d 1'`
> This shows the size of the current directory and its subdirectories in human-readable format

`alias today='date +"%A, %B %d, %Y"'`
> This shows the current date in the format of "Day of the week, Month Day, Year"

`alias weather='function __weather() { curl wttr.in/$1; }; __weather'`
> This shows the weather for your system location using the wttr.in service

`alias free='free -m -h'`
> This shows the amount of free and used memory in the system in a human-readable format.

`alias jsonpretty='function __jsonpretty() { python -m json.tool $1; }; __jsonpretty'`
> This pretty prints JSON file

`alias rename='function __rename() { for i in *$1*; do mv "$i" "${i/$1/$2}"; done }; __rename'`
> This renames all files in the current directory containing a specific string with another string

`alias ssh-keygen='function __ssh-keygen(){ ssh-keygen -t $1 -b $2 -C $3; }; __ssh-keygen'`
> This generates an ssh key with a specified encryption type, key size and comment

`alias encrypt='function __encrypt() { openssl enc -aes-256-cbc -salt -in $1 -out $2; }; __encrypt'`
> This encrypts a file using AES-256 encryption

`alias decrypt='function __decrypt() { openssl enc -d -aes-256-cbc -in $1 -out $2; }; __decrypt'`
> This decrypts a file that was encrypted using AES-256 encryption

`alias to=‘function __to() { cd "$@" && tree; }; __to'`
> This allows you to navigate to a directory and list the files in it with a single command and also show the directory tree


### Git Based Aliases
`alias gstat='git status'`
> This shows the current status of the git repository

`alias gdiff='git diff'`
> This shows the differences between the current working tree and the last commit

`alias gc='git commit -v'`
> This commits the changes along with the commit message

`alias gb='git branch'`
> This shows the list of branches and highlights the current branch

`alias gco='git checkout'`
> This allows you to switch between branches

`alias ga='git add'`
> This adds files to the index

`alias gd='git diff --name-status'`
> This shows the difference in terms of added, deleted or modified files

`alias gpush='git push origin $(git rev-parse --abbrev-ref HEAD)'`
> This pushes the current branch to the origin

`alias gpull='git pull origin $(git rev-parse --abbrev-ref HEAD)'`
> This pulls the changes from the origin for the current branch

`alias gitlog='git log --graph --oneline --decorate --all'`
> This shows the git log in a more readable format with the graph, one-line format, decorations and for all branches


### Python Developer Aliases
`alias py='function __py() { python $1; }; __py'`
> This runs the python command for the given file

`alias pytest='function __pytest() { pytest --quiet $1; }; __pytest'`
> This runs the pytest command with the quiet option, which suppress unnecessary output

`alias pipinstall='function __pipinstall() { pip install $1; }; __pipinstall'`
> This runs the pip install command for the given package

`alias pipuninstall='function __pipuninstall() { pip uninstall $1; }; __pipuninstall'`
> This runs the pip uninstall command for the given package

`alias pipupgrade='function __pipupgrade() { pip install --upgrade $1; }; __pipupgrade'`
> This runs the pip install command with an upgrade option for the given package

`alias pythonpath='function __pythonpath() { export PYTHONPATH=$1:$PYTHONPATH; }; __pythonpath'`
> This exports the python path for the given directory

`alias virtualenv='function __virtualenv() { virtualenv $1; }; __virtualenv'`
> This creates a new virtual environment with the given name

`alias activatevenv='function __activatevenv() { source $1/bin/activate; }; __activatevenv'`
> This activates the virtual environment for the given path

`alias deactivatevenv='function __deactivatevenv() { deactivate; }; __deactivatevenv'`
> This deactivates the current virtual environment

`alias pylint='function __pylint() { pylint --quiet $1; }; __pylint'`
> This runs the pylint command with a quiet option, which suppresses unnecessary output


### Mac User Aliases
`alias openfinder='function __openfinder() { open -a Finder $1; }; __openfinder'`
> This opens the Finder app for the given directory

`alias openterminal='function __openterminal() { open -a Terminal $1; }; __openterminal'`
> This opens the Terminal app for the given directory

`alias emptytash='function __emptytash() { rm -rf ~/.Trash/*; }; __emptytash'`
> This empties the trash folder

`alias flushdns='function __flushdns() { sudo dscacheutil -flushcache; }; __flushdns'`
> This flushes the DNS cache

`alias hidefiles='function __hidefiles() { defaults write com.apple.finder AppleShowAllFiles NO; }; __hidefiles'`
> This hides all the hidden files

`alias showfiles='function __showfiles() { defaults write com.apple.finder AppleShowAllFiles YES; }; __showfiles'`
> This shows all the hidden files

`alias openapp='function __openapp() { open /Applications/$1.app; }; __openapp'`
> This opens the given app in the Applications folder

`alias spotlight='function __spotlight() { mdfind $1; }; __spotlight'`
> This searches the given keyword using the spotlight

`alias lock='function __lock() { /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend; }; __lock'`
> This locks the screen

`alias reboot='function __reboot() { sudo reboot; }; __reboot'`
> This reboots the system

`alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"`
> This alias will find and delete all ".DS_Store" files in the current directory and all subdirectories.

`alias battery="pmset -g batt | grep -Eo '[0-9]+%' | sed 's/%//'"`
> This alias will display the current battery percentage on Mac.


### Kubernetes Aliases
`alias k8s-create-ns='kubectl create namespace'`
> Create a new k8s namespace

`alias k8s-get-pods='kubectl get pods --all-namespaces'`
> Get the list of all pods

`alias k8s-get-services='kubectl get services --all-namespaces'`
> Get the list of all services

`alias k8s-scale='kubectl scale deployment'`
> Scale a deployment


### MYSQL based Aliases
`alias mysqlstart='sudo service mysql start'`
> This starts the MySQL service

`alias mysqlstop='sudo service mysql stop'`
> This stops the MySQL service

`alias mysqlstatus='sudo service mysql status'`
> This shows the status of MySQL service

`alias mysqldump='mysqldump --user=username --password=password --databases db_name > db_name.sql'`
> This creates a backup of the MySQL database, with the given username, password and database name


### Java Developer Aliases
`alias javac='function __javac() { javac -Xlint:unchecked $1; }; __javac'`
> This compiles a specified Java file with additional warnings for unchecked operations

`alias java='function __java() { java -Xmx512M -Xss1024k $1; }; __java'`
> This runs a specified Java class with increased heap and stack sizes

`alias javadoc='function __javadoc() { javadoc -private -d $1 $2; }; __javadoc'`
> This generates Java documentation for a specified package or class with private members included in the specified directory

`alias mvn='function __mvn() { mvn clean install -Dmaven.test.skip=true; }; __mvn'`
> This runs a maven clean install command and skips test cases

`alias mvnDebug='function __mvnDebug() { mvnDebug clean install; }; __mvnDebug'`
> This runs a maven in debug mode

`alias gradle='function __gradle() { gradle --daemon --parallel --no-build-cache $1; }; __gradle'`
> This runs gradle with daemon, parallel and no-build-cache options

`alias gradlew='function __gradlew() { ./gradlew --daemon --parallel --no-build-cache $1; }; __gradlew'`
> This runs gradle wrapper with daemon, parallel and no-build-cache options

`alias jar='function __jar() { jar -xf $1; }; __jar'`
> This extract contents of the specified jar file

`alias jps='function __jps() { jps -l; }; __jps'`
> This shows all the java processes running with their main class

`alias jstack='function __jstack() { jstack -l $1; }; __jstack'`
> This shows the stack trace of a specified java process id


### Bash Functions
#### Problem Statement
> I have a high-availability cluster that needs to be managed together by logging in on both servers and running commands on both. A shell function to do this using iTerm will look as below
```
alias ssh2servers='function __ssh2servers() { 
	open -a iTerm; 
	osascript -e 'tell application "iTerm" to activate'; 
	osascript -e 'tell application "iTerm" to set newTab to (create window with default profile)'; 
	osascript -e 'tell application "iTerm" to set newTab2 to (create tab in newTab with default profile)' ; 
	osascript -e 'tell application "iTerm" to tell newTab to launch session "Default Session"' ; 
	osascript -e 'tell application "iTerm" to tell newTab2 to launch session "Default Session"' ; 
	osascript -e 'tell application "iTerm" to tell newTab to tell last session to write text "ssh aruva@$1"' ; 
	osascript -e 'tell application "iTerm" to tell newTab2 to tell last session to write text "ssh aruva@$2"' ;}; 
_ssh2servers'
```

> and then this function can be used as an alias and invoked as below

`ssh2servers server1@aruva.xyz server2@aruva.xyz`

#### Other functions can be built as follows:
> A function that searches for a specific file or directory in the current directory and all subdirectories:
`finddir() { find . -name $1 }`

> A function that searches for a specific string in a file and outputs the line numbers where it appears:
`grepnum() { grep -n $1 $2 }`

> A function that monitors a specific process and sends an email notification when it completes:
```
monitor_process() {
  while true; do
    if ! pgrep -f $1; then
      echo "Process $1 has completed." | mail -s "Process Complete" email@example.com
      break
    fi
    sleep 60
  done
}
```

> A function that allows using sudo command without having to type a password every time
```
function sudowithoutpassword(){
  echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER
  sudo chmod 440 /etc/sudoers.d/$USER
}
```

> A function that checks if a website is up or down
```
function website-status(){
  curl -s --head --request GET $1 | grep "200 OK"
}
```

> A function that counts all the files and directories in a specific directory
```
function countfiles(){
  find $1 -type f | wc -l
}
```

> A function that creates a new file with the current date and time in the name:
```
touchdate() {
  touch $(date +"%Y%m%d_%H%M%S")$1
}
```

> A function that clears the terminal screen and shows the current user and host:
```
clearinfo() {
  clear
  echo "User: $USER"
  echo "Host: $HOSTNAME"
}
```

> A function that allows using apt-get without having to type a password every time
```
aptget() {
  echo $1 | sudo -S apt-get $2
}
```

> A function that runs a specific command as a root user
```
function runasroot(){
  echo $1 | sudo -S $2
}
```

### Testing an alias
The set -x command is used to turn on debugging in a shell script and can also be used to test bash aliases. 
The command and its arguments are printed to the standard error stream before the command is executed. 

`set -x`
> Turn on debugging

`alias update='apt-get update'`
> Create an alias called "update" that runs the command "apt-get update"

`update`
> Run the "update" alias

`set +x`
> Turn off debugging
