{
	rustPlatform,
	fetchFromGitHub,
	lib,
}:

rustPlatform.buildRustPackage rec {
	pname = "flxy-rs";
	version = "0.1.19";

	src = fetchFromGitHub {
		owner = "jcs-legacy";
		repo = pname;
		rev = "${version}";
		sha256 = "sha256-o9I4M+WuZJ+HkL9d0EENxl3HQ1kX35aYHCnvokgo/sc=";
	};

	cargoHash = "sha256-cBUs1IRD7MPpXCAYVRHaL9ZmfQ/I3IWupgsx/A1v6zk=";
	doCheck = false;

	meta = {
		description = "Fast, character-based search library in Rust";
		homepage = "https://github.com/jcs-legacy/flxy-rs";
		license = lib.licenses.mit;
	};
}
