# Display time
SPACESHIP_TIME_SHOW=false

# Display username always
SPACESHIP_USER_SHOW=always

# Do not truncate path in repos
SPACESHIP_DIR_TRUNC_REPO=false

spaceship add git

SPACESHIP_PROMPT_ORDER=(
  dir            # Current directory section
  git            # Git section (git_branch + git_status)
  python         # Python section
  rust           # Rust section
  lua            # Lua section
  venv           # virtualenv section
  async          # Async jobs indicator
  line_sep       # Line break
  sudo           # Sudo indicator
  char           # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  user           # Username section
  host           # Hostname section
  jobs           # Background jobs indicator
  exec_time      # Execution time
  exit_code      # Exit code section
)
