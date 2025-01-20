starship init fish | source

thefuck --alias | source
set -x PATH $PATH /usr/local/bin/python3

alias getLastCommitId 'git rev-parse HEAD | tr -d "\n" | pbcopy; echo "Last commit ID copied to the clipboard"'

export JAVA_HOME=$(/usr/libexec/java_home -v19)
export PATH="$JAVA_HOME/bin:$PATH"

# Setting PATH for Python 3.11
# The original version is saved in /Users/fran/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin" "$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/fran/google-cloud-sdk/path.fish.inc' ]
    . '/Users/fran/google-cloud-sdk/path.fish.inc'
end

# Created by `pipx` on 2024-04-04 12:19:03
set PATH $PATH /Users/fran/.local/bin

# pnpm
set -gx PNPM_HOME /Users/fran/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
