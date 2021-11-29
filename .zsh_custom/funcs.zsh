

hex2dec() {
  read foo
  echo $((0x$foo))
}

dec2hex() {
  read foo
  echo $((16#$foo))
}

timer () {
  # (sleep $2 && say \"mob next\" && /usr/bin/osascript -e 'display notification \"mob next\"') &
  (sleep $1 && say "mob next" && /usr/bin/osascript -e 'display notification "mob next"') &
}

mkcd () {
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}

newlinesToSpaces () {
  tr '\040' '\012' <"$1"> "$2"
}

# use octal ascii numbers
# some common examples: \042 -> ", \047 -> ', \073 -> ;
spacesToNewlines () {
  tr '\012' '\040' <"$1"> "$2"
}

# convert tab delimited csv header that is capitalized with spaces (Id	Completed On	Status ) to snake_case (underscore: \137) and change the tabs(\011) chars to newlines(\012)
# head -1 user-ass-local.csv | tr '\011' '\012' | tr '\040' '\137' | tr '[A-Z]' '[a-z]'

tabsToNewlines () {
  tr '\011' '\012'
}

camelcase() {
  perl -pe 's#(_|^)(.)#\u$2#g'
}

snakecase() {
  perl -pe 's#([A-Z])#_\L$1#g' | perl -pe 's#^_##'
}

yarnadd() {
  yarn add $1; yarn add -D @types/$1;
}

mkdate () {
  mkdir "$(date +"%Y-%m-%d-$1")"
}



# LIST=$(ls -d */)
# echo $LIST

