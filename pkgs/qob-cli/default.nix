{
  lib,
  stdenv,
  fetchFromGitHub,
  sbcl,
}:

stdenv.mkDerivation rec {
  pname = "qob-cli";
  version = "0.1.1";

  src = fetchFromGitHub {
    owner = "cl-qob";
    repo = "cli";
    rev = version;
    hash = "sha256-xosaZWIZi7/x3u7v1lzIhvnCAzbKZbFByDFoQaLWQgA=";
  };

  buildInputs = [ sbcl ];

  installPhase = ''
    make install-ql
    make build
    install -m755 -D bin/sbcl/qob $out/bin/qob
  '';

  dontStrip = true;

  meta = {
    changelog = "https://github.com/cl-qob/cli/blob/${src.rev}/CHANGELOG.md";
    description = "CLI for building, runing, testing, and managing your Common Lisp dependencies";
    homepage = "https://cl-qob.github.io/";
    license = lib.licenses.mit;
    mainProgram = "qob";
    maintainers = with lib.maintainers; [
      jcs090218
    ];
  };
}
