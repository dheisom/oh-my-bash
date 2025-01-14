#! bash oh-my-bash.module

function _omb_plugin_sudo_add_sudo {
  if [[ -z $READLINE_LINE ]]; then
    READLINE_LINE="$(fc -ln -1 | command sed 's/^[[:space:]]\{1,\}//')"
  fi
  READLINE_LINE="sudo $READLINE_LINE"
  ((READLINE_POINT += 5))
}

bind -m emacs -x '"\e\e": _omb_plugin_sudo_add_sudo'
bind -m vi-insert -x '"\e\e": _omb_plugin_sudo_add_sudo'
bind -m vi-command -x '"\e\e": _omb_plugin_sudo_add_sudo'
