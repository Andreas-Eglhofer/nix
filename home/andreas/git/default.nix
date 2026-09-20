{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Andreas Eglhofer";
        email = "eglhofer.andreas@gmail.com";
      };

      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };
}
