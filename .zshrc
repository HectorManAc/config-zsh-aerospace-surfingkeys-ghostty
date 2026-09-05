# ==========================================
# PATH & SYSTEM SETTINGS
# ==========================================
export PATH="/opt/homebrew/opt/node@24/bin:$PATH"

# Added by Antigravity
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Added by Antigravity IDE
export PATH="$HOME/.antigravity-ide/antigravity-ide/bin:$PATH"

# ==========================================
# ALIASES
# ==========================================
alias n="nvim"
alias a="agy"
alias ll="ls -lahF"
alias grep="grep --color=auto"

# Dotfiles management
alias dotfiles-reload="source ~/.zshrc && echo '✅ Configuraciones recargadas'"
alias dotfiles-update="cd ~/dotfiles && git pull && ./install.sh && source ~/.zshrc"

# ==========================================
# HISTORY SETTINGS
# ==========================================
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt histignorealldups
setopt histignorespace

# ==========================================
# AUTOCOMPLETE SETTINGS (NEON STYLE)
# ==========================================
# Load completion system
autoload -Uz compinit && compinit

# Show completion menu on double tab
zstyle ':completion:*' menu select

# Case-insensitive autocomplete
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

# Colorize completion suggestions
# ma=45;30;1 highlights selected autocomplete item with a neon pink/magenta background and black text
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'pi=33' 'ex=31' 'bd=46;30' 'cd=43;30' 'su=41;30' 'sg=46;30' 'tw=42;30' 'ow=43;30' 'ma=45;30;1'

# ==========================================
# NEON PROMPT (PS1)
# ==========================================
# Enable color support
autoload -U colors && colors

# Git prompt integration
autoload -Uz vcs_info
precmd_functions+=(vcs_info)

# Neon Color Tokens (256-color palette)
NEON_CYAN="%F{51}"
NEON_PINK="%F{201}"
NEON_GREEN="%F{82}"
NEON_PURPLE="%F{135}"
NEON_YELLOW="%F{226}"
NEON_ORANGE="%F{208}"
MUTED_GREY="%F{242}"
RESET="%f"

# Format Git branch info
zstyle ':vcs_info:git:*' formats " ${NEON_PURPLE}git:(%b)${RESET}"
zstyle ':vcs_info:*' enable git

# Prompt: [current_directory] git:(branch) ❯
setopt prompt_subst
PROMPT='${MUTED_GREY}[%D{%m/%d %H:%M}]${RESET} ${NEON_CYAN}%/${RESET}${vcs_info_msg_0_} ${NEON_PINK}❯${RESET} '

# ==========================================
# PLUGINS (AUTOSUGGESTIONS & HIGHLIGHTING)
# ==========================================

# 1. Load zsh-autosuggestions
if [ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  # Dim violet suggestion style to match neon theme
  ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=241'
fi

# 2. Load zsh-syntax-highlighting
if [ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  
  # Custom Neon Highlighting Colors
  typeset -A ZSH_HIGHLIGHT_STYLES
  ZSH_HIGHLIGHT_STYLES[command]='fg=51,bold'           # Neon Cyan
  ZSH_HIGHLIGHT_STYLES[alias]='fg=201,bold'            # Neon Pink
  ZSH_HIGHLIGHT_STYLES[builtin]='fg=51,bold'          # Neon Cyan
  ZSH_HIGHLIGHT_STYLES[function]='fg=82,bold'         # Neon Green
  ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=226'     # Neon Yellow
  ZSH_HIGHLIGHT_STYLES[path]='fg=82,underline'        # Neon Green underline
  ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=82'           # Neon Green prefix
  ZSH_HIGHLIGHT_STYLES[path_approximate]='fg=226'      # Neon Yellow approximate
  ZSH_HIGHLIGHT_STYLES[globbing]='fg=201'             # Neon Pink globbing
  ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=135'    # Neon Purple
  ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=208' # Neon Orange
  ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=208' # Neon Orange
  ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=135' # Neon Purple
  ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=226' # Neon Yellow for strings
  ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=226' # Neon Yellow for strings
  ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=226' # Neon Yellow for strings
  ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=226'
  ZSH_HIGHLIGHT_STYLES[assign]='fg=51'                # Neon Cyan
  ZSH_HIGHLIGHT_STYLES[redirection]='fg=135'          # Neon Purple
  ZSH_HIGHLIGHT_STYLES[comment]='fg=244,italic'       # Muted Grey comment
fi

# ==========================================
# FZF INTEGRATION & NEON THEME
# ==========================================
if (( $+commands[fzf] )); then
  source <(fzf --zsh)
  
  # Cyberpunk Neon FZF Colors (with pure black background #000000)
  export FZF_DEFAULT_OPTS="--color=fg:#f8f8f2,hl:#00f5ff,fg+:#f8f8f2,bg:#000000,bg+:#121212,hl+:#ff007f --color=info:#bd93f9,prompt:#50fa7b,pointer:#ff79c6,marker:#ff79c6,spinner:#ffb86c,header:#6272a4 --reverse --height 40% --border"
fi

# ==========================================
# WELCOME BANNER
# ==========================================
if [[ -o interactive ]]; then
  # Set terminal background to black dynamically (supported by many terminal emulators)
  printf '\e]11;#000000\a'

  echo ""
  echo "  \e[1;36m▲ \e[1;35mAntigravity Terminal \e[0m"
  echo "  \e[32mActive Profile: Neon Cyberpunk \e[0m"
  echo "  \e[90mPress Ctrl+R for history search, Tab for completions\e[0m"
  echo ""
fi
