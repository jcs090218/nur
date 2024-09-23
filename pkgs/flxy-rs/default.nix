{
	rustPlatform,
	fetchFromGitHub,
	lib,
}:

rustPlatform.buildRustPackage rec {
	pname = "flxy-rs";
	version = "0.1.18";

	src = fetchFromGitHub {
		owner = "jcs-legacy";
		repo = pname;
		rev = "${version}";
		sha256 = "sha256-OFm0Jk06Mxzr4F7KrMBGFqcDSuTtrMvBSK99bbOgua4=";
	};

	cargoHash = "sha256-cBUs1IRD7MPpXCAYVRHaL9ZmfQ/I3IWupgsx/A1v6zk=";
	doCheck = false;

	meta = {
		description = "Rewrite emacs-flx in Rust for dynamic modules";
		homepage = "https://github.com/jcs-legacy/flxy-rs";
		license = lib.licenses.mit;
	};
}
