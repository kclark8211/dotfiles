SPACESHIP_TIME_SHOW=false
SPACESHIP_USER_SHOW=always
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_PROMPT_ADD_NEWLINE=false

spaceship add git

SPACESHIP_PROMPT_ORDER=(
  dir            # Current directory section
  git            # Git section (git_branch + git_status)
  venv           # virtualenv section
  sudo           # Sudo indicator
  char           # Prompt character
)

#SPACESHIP_RPROMPT_ORDER=(
#  user           # Username section
#  host           # Hostname section
#  jobs           # Background jobs indicator
#  exec_time      # Execution time
#  exit_code      # Exit code section
#)
