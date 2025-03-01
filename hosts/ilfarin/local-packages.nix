{ pkgs, inputs, config, ... }: {


  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

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
    github-desktop
    cloudflare-warp
    cloudflared
  ];

 
  #Enable Cloudflare warp cli B

  systemd.packages = [ pkgs.cloudflare-warp ]; # for warp-cli
  systemd.targets.multi-user.wants = [ "warp-svc.service" ]; # causes warp-svc to be started automatically

}
