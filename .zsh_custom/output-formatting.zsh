# https://en.wikipedia.org/wiki/ANSI_escape_code
__RED_TEXT_START__="\033[1;31m"
__GREEN_TEXT_START__="\033[1;32m"
__YELLOW_TEXT_START__="\033[1;33m"
__BOLD_TEXT_START__="\033[1m"
__TEXT_RESET__="\033[0m"
function __err__ {
  (>&2 echo -e "${__RED_TEXT_START__}${@}${__TEXT_RESET__}")
}
function __green__ {
  echo -e "${__GREEN_TEXT_START__}${@}${__TEXT_RESET__}"
}
function __atten__ {
  echo -e "${__YELLOW_TEXT_START__}${@}${__TEXT_RESET__}"
}
#example all-is-well that goes to stdout
#__green__ "well hello and welcome"
#example oh-crap that goes to stderr
#__err__ "danger will robinson"

