# Display time
SPACESHIP_TIME_SHOW=false

# Display username always
SPACESHIP_USER_SHOW=always

# Do not truncate path in repos
SPACESHIP_DIR_TRUNC_REPO=false

spaceship add git

SPACESHIP_PROMPT_ORDER=(
  user           # Username section
  dir            # Current directory section
  host           # Hostname section
  git            # Git section (git_branch + git_status)
  python         # Python section
  rust           # Rust section
  lua            # Lua section
  venv           # virtualenv section
  exec_time      # Execution time
  async          # Async jobs indicator
  line_sep       # Line break
  jobs           # Background jobs indicator
  exit_code      # Exit code section
  sudo           # Sudo indicator
  char           # Prompt character
)
