{ ... }:

{
  programs.bash = {
    enable = true;

    historyControl = [
      "ignoredups"
      "ignorespace"
    ];

    shellAliases = {
      ls = "ls -lah";
      ".." = "cd ..";
      "..." = "cd ../..";
    };

    initExtra = ''
      mit() {
        if [ -z "$1" ]; then
          echo "usage: mit <course>"
          return 1
        fi

        cd "$HOME/School/2026f/$1" || return
      }
      set_title() {
      printf '\033]0;foot - %s\007' "$(pwd)"
      }
     
      PROMPT_COMMAND='set_title'

      PS1='\u@\h:\w\$ '
    '';
  };
}
