{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.python37
    pkgs.kind
    pkgs.kubectl
    pkgs.kubernetes-helm
  ];

  shellHook = ''
    if kind get clusters &>/dev/stdout | grep -q 'No kind clusters found.'; then
      ./scripts/deploy-kind.sh
    fi
  '';
}
