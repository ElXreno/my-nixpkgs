{ stdenv, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "filesorter";
  version = "0.2.0";

  src = fetchFromGitHub {
    owner = "ElXreno";
    repo = pname;
    rev = "v${version}";
    sha256 = "1zfhrx4kq6qxyc7d39drnr7cr0dfcqirbir7y6zf36dd8nah7v1f";
  };

  cargoSha256 = "0jhppfz8p6vvxqbfjb6q44cy1gs9imn3wamgqwxhlrlx467z77lm";

  meta = with stdenv.lib; {
    description = "Simple and ugly file sorter writen in Rust";
    homepage = "https://github.com/ElXreno/filesorter";
    license = licenses.gpl3;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
