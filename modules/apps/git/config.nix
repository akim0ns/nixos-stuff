{ config, ... }:

{
  programs.git.config = {
    user.name = "akimons";
    user.email = "gorilalwarfare360@aol.com";
    user.signingKey = "/home/big/.ssh/id_ed25519.pub";
    gpg.format = "ssh";
    gpg.ssh.allowedSignersFile = "/home/big/.ssh/allowed_signers";
    commit.gpgSign = true;
  };
}
