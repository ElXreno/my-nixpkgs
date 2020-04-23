{ stdenv, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "zswap-cli";
  version = "1.0.2";

  src = fetchFromGitHub {
    owner = "ElXreno";
    repo = pname;
    rev = "v${version}";
    sha256 = "1z8m52hj6n3vp5ficwdwqn493hm4g1bhfwr953nqqqn32fj9hgnw";
  };

  cargoSha256 = "0skkxzvj6rqkik5br0q31lpbddfh1zm35ch1xb61yhllxjqp0b3i";

  meta = with stdenv.lib; {
    description = "Utility for controlling zswap parameters";
    homepage = "https://github.com/ElXreno/zswap-cli";
    license = licenses.asl20;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
