let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
  name = "the-boys-dev-shell";

  buildInputs = [
    pkgs.gcc
    pkgs.gnumake      # GNU make (provides `make`)
    pkgs.pkg-config
    pkgs.gdb
    pkgs.valgrind
  ];

  # dica útil: quando entrar no nix-shell, mostra instruções
  shellHook = ''
    echo "== Nix shell pronto =="
    echo "Para compilar: make"
    echo "Para limpar:    make clean"
    echo "Se quiser depurar: gdb ./theboys (ou o binário gerado pelo Makefile)"
  '';
}

