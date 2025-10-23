{
  inputs,
  pkgs,
  ...
}: {
  programs.neovim = {
    enable = true;
    package = inputs.neovim-nightly.packages.${pkgs.system}.default;
    viAlias = true;
    defaultEditor = true;
  };

  home.packages = with pkgs; [
    pyright
    nodePackages.typescript-language-server
    lua-language-server
    gopls
    vscode-langservers-extracted
    clang-tools
    bash-language-server
    nixd
  ];
  home.file.".config/nvim".source = ./nvim;
  home.file.".config/nvim".recursive = true;
}
