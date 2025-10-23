{ pkgs, profile, ... }:
{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    initExtra = ''eval "$(starship init bash)"'';
  };
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };
  home.shellAliases = {
    sv = "sudo nvim";
    vi = "nvim";
    cat = "bat";
    man = "batman";
  };
}
