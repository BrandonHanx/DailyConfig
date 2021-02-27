begin
    set --local AUTOJUMP_PATH /usr/share/autojump/autojump.fish
    if test -e $AUTOJUMP_PATH
        source $AUTOJUMP_PATH
    end
end


function git_is_repo --description 'Check if directory is a repository'
  test -d .git
  or command git rev-parse --git-dir >/dev/null ^/dev/null
end

function fish_greeting
  printf "
    ____                           __               __  __                   
   / __ ) _____ ____ _ ____   ____/ /____   ____   / / / /____ _ ____   _  __
  / __  |/ ___// __ `// __ \ / __  // __ \ / __ \ / /_/ // __ `// __ \ | |/_/
 / /_/ // /   / /_/ // / / // /_/ // /_/ // / / // __  // /_/ // / / /_>  <  
/_____//_/    \__,_//_/ /_/ \__,_/ \____//_/ /_//_/ /_/ \__,_//_/ /_//_/|_|  
                                                                             
"
end
