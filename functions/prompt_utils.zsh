#
# functions/prompt_utils.zsh - provide prompt definitions
#
# This work is free.  You can redistribute it and/or modify it under the terms of
# the Do What The Fuck You Want To Public License, Version 2, as published by Sam
# Hocevar.  See  the COPYING file  or  http://www.wtfpl.net/  for  more  details.
#

# Context: user@hostname (who am I and where am I)
# See https://github.com/bhilburn/powerlevel9k/blob/1ff9da64d974265ce2f22bd1da4a47d0b8f7ca90/powerlevel9k.zsh-theme#L434
prompt_context () {
	local username="%(!.$OHMYVIAREZO_CONTEXT_ROOT_COLOR.$OHMYVIAREZO_CONTEXT_USER_COLOR)%n%b%f"

	# Return only username if $OHMYVIAREZO_CONTEXT_HOSTNAME is empty.
	if [[ $OHMYVIAREZO_CONTEXT_HOSTNAME == "empty" ]]; then
		echo "${username}"
		return
	fi

	local separator="$OHMYVIAREZO_CONTEXT_SEPARATOR_COLOR@%b%f"

	# Handle hostnames containing `.` (defaults to full machine hostname prompt.)
	local colorless_hostname="$OHMYVIAREZO_CONTEXT_HOSTNAME"
	if [[ $OHMYVIAREZO_CONTEXT_HOSTNAME == 'full' ]]; then
		colorless_hostname="%M"
	elif [[ $OHMYVIAREZO_CONTEXT_HOSTNAME == 'partial' ]]; then
		colorless_hostname="%m"
	fi
	local hostname="$OHMYVIAREZO_CONTEXT_HOSTNAME_COLOR${colorless_hostname}%b%f"

	echo "${username}${separator}${hostname}"
}

# Print current directory with ~ instead of $HOME
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Shell-state
prompt_dir () {
	local current_dir="$OHMYVIAREZO_DIR_COLOR%~%b%f"

	echo $current_dir
}

# Print current time
prompt_time () {
	local clock="$OHMYVIAREZO_TIME_COLOR$OHMYVIAREZO_TIME_FORMAT%b%f"

	echo $clock
}

# vim: ft=zsh fenc=utf-8
