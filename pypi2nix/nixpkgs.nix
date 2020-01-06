{ overlays ? [ ], ... }@args:

let
  pypi2nixOverlay = self: super: {
    python3 = super.python3.override { inherit packageOverrides; };
  };

  packageOverrides = self: super: {
    faraday_agent_dispatcher =
      self.callPackage ./packages/faraday_agent_dispatcher.nix { };
    syslog_rfc5424_formatter =
      self.callPackage ./packages/syslog_rfc5424_formatter.nix { };
  };

in import <nixpkgs> (args // { overlays = [ pypi2nixOverlay ] ++ overlays; })
