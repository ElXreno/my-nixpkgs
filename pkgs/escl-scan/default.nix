{ stdenv, fetchFromGitHub, rustPlatform, pkg-config, openssl }:

rustPlatform.buildRustPackage rec {
  pname = "escl-scan";
  version = "0.1.1";

  src = fetchFromGitHub {
    owner = "ElXreno";
    repo = pname;
    rev = "v${version}";
    sha256 = "1z5c33z8vllssf6z6mvpdj37bbrgpd6n3mikqby3cvkq21gf2wq4";
  };
  
  nativeBuildInputs = stdenv.lib.optionals stdenv.isLinux [ pkg-config ];

  buildInputs = stdenv.lib.optionals stdenv.isLinux [ openssl ];

  cargoSha256 = "0bjmg7xp814dk0vz3qi2npjldp47l9dh9xb5hhizj5nhfiiln7hj";

  meta = with stdenv.lib; {
    description = "A library for scanning documents over LAN or Wi-Fi using eSCL protocol";
    homepage = "https://github.com/ElXreno/escl-scan";
    license = licenses.gpl3;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
