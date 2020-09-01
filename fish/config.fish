begin
    set --local AUTOJUMP_PATH $HOME/.autojump/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end

function fish_greeting
end

function git_is_repo --description 'Check if directory is a repository'
  test -d .git
  or command git rev-parse --git-dir >/dev/null ^/dev/null
end
