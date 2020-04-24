{ stdenv, fetchFromGitHub, rustPlatform, pkg-config, openssl }:

rustPlatform.buildRustPackage rec {
  pname = "escl-scan";
  version = "0.1.3";

  src = fetchFromGitHub {
    owner = "ElXreno";
    repo = pname;
    rev = "v${version}";
    sha256 = "1gx8amsgfmd0zcvgkp794rfiydl2a6kzh341q17csvh3zry96cr2";
  };
  
  nativeBuildInputs = stdenv.lib.optionals stdenv.isLinux [ pkg-config ];

  buildInputs = stdenv.lib.optionals stdenv.isLinux [ openssl ];

  cargoSha256 = "15qhbdw0nrpf4yi6j8wfnzdv7vz36qapwf0p5zzv66h480xpqkk4";

  meta = with stdenv.lib; {
    description = "A library for scanning documents over LAN or Wi-Fi using eSCL protocol";
    homepage = "https://github.com/ElXreno/escl-scan";
    license = licenses.mpl20;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
