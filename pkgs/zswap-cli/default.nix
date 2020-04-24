{ stdenv, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "zswap-cli";
  version = "1.0.3";

  src = fetchFromGitHub {
    owner = "ElXreno";
    repo = pname;
    rev = "v${version}";
    sha256 = "01kpziwmb22ldsmgia0s7rb38ah6xbz5wivyh6lr4mgb76kx1g09";
  };

  cargoSha256 = "1qrxz9lmrz5f4jbgc1j4amx2j1hl91dv7jarhn38syb9bpkxga38";

  meta = with stdenv.lib; {
    description = "Utility for controlling zswap parameters";
    homepage = "https://github.com/ElXreno/zswap-cli";
    license = licenses.mpl20;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
