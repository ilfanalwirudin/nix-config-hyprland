{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    gcc
    git
    vim
 #   kdenlive
    inputs.zen-browser.packages."${system}".default # beta
    ghostty
    # jetbrains.pycharm-professional
    # jre8
    # qemu
    # quickemu
    libsForQt5.dolphin
  ];
}
