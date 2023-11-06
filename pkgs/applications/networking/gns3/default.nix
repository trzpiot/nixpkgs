{ callPackage
, libsForQt5
}:

let
  mkGui = args: callPackage (import ./gui.nix (args)) {
    inherit (libsForQt5) wrapQtAppsHook;
  };

  mkServer = args: callPackage (import ./server.nix (args)) { };
in {

  guiStable = mkGui {
    channel = "stable";
    version = "2.2.43";
    hash = "sha256-+2dcyWnTJqGaH9yhknYc9/0gnj3qh80eAy6uxG7+fFM=";
  };

  guiPreview = mkGui {
    channel = "stable";
    version = "2.2.43";
    hash = "sha256-+2dcyWnTJqGaH9yhknYc9/0gnj3qh80eAy6uxG7+fFM=";
  };

  serverStable = mkServer {
    channel = "stable";
    version = "2.2.44.1";
    hash = "sha256-YtYXTEZj5009L8OU7jdhegYu5Xll3jZAW6NJFWOvxHQ=";
  };

  serverPreview = mkServer {
    channel = "stable";
    version = "2.2.44.1";
    hash = "sha256-YtYXTEZj5009L8OU7jdhegYu5Xll3jZAW6NJFWOvxHQ=";
  };
}
