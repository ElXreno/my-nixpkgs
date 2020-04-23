{ stdenv, fetchFromGitHub, rustPlatform, youtube-dl }:

rustPlatform.buildRustPackage rec {
  pname = "yps";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "ElXreno";
    repo = pname;
    rev = "v${version}";
    sha256 = "1w2skyp9lyi3k549lq04gbdh20icpbnj2aw5j8p2d75mm8vg9xb7";
  };

  buildInputs = stdenv.lib.optionals stdenv.isLinux [ youtube-dl ];

  cargoSha256 = "1ig3ixjri8bhvv7z871900l25c8ngasrrxxqnlbglchiarvn77b8";

  meta = with stdenv.lib; {
    description = "YouTube Playlist Sync utility writen in Rust";
    homepage = "https://github.com/ElXreno/yps";
#     license = licenses.asl20;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
