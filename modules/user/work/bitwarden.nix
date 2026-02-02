{
  pkgs,
  ...
}:

pkgs.stdenv.mkDerivation rec {
  pname = "wden";
  version = "0.14.0";

  src = pkgs.fetchurl {
    url = "https://github.com/luryus/wden/releases/download/${version}/wden-x86_64-unknown-linux-gnu";
    hash = "sha256-IFAlLS6V8f762MA307vsA1K24IBN77+zJyXzfyljjwI=";
  };

  dontUnpack = true;

  nativeBuildInputs = [
    pkgs.autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    openssl
    zlib
    stdenv.cc.cc.lib
    wayland
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin
    cp $src $out/bin/wden
    chmod +x $out/bin/wden

    runHook postInstall
  '';

  meta = with pkgs.lib; {
    description = "A simple TUI client for Bitwarden";
    homepage = "https://github.com/luryus/wden";
    license = licenses.mit;
    platforms = [ "x86_64-linux" ];
    mainProgram = "wden";
    sourceProvenance = with sourceTypes; [ binaryNativeCode ];
  };
}

