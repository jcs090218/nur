{ lib, pkgs, fetchFromGitHub }:

pkgs.buildASDFSystem {
  pname = "qob-cli";
  version = "0.1.4";

  src = fetchFromGitHub {
    owner = "cl-qob";
    repo = "cli";
    rev = "0.1.4";
    hash = "sha256-81S/5Ff2a4caoZhysPvnXLVRXlJBg6alR/afsF170kc=";
  };

  lisp = pkgs.sbcl;
  systems = [ "qob" ];

  dontStrip = true;

  meta = {
    description = "CLI for building, running, testing, and managing your Common Lisp dependencies";
    license = lib.licenses.mit;
    mainProgram = "qob";
  };
}
