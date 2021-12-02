#!/bin/sh

case "${SHELL}" in
  (*zsh) ;;
  (*) chsh -s "$(which zsh)"; exit 1 ;;
esac

# if test -z "${1}"; then
#   osascript - "${0}" << EOF > /dev/null 2>&1
#     on run { _this }
#       tell app "Terminal" to do script "source " & quoted form of _this & " 0"
#     end run
# EOF
# fi 
ask () {
  osascript - "${1}" "${2}" "${3}" << EOF 2> /dev/null
    on run { _title, _action, _default }
      tell app "System Events" to return text returned of (display dialog _title with title _title buttons { "Cancel", _action } default answer _default)
    end run
EOF
}


ask 'New Email Account: User Name?' 'Create Account' "$(whoami)"