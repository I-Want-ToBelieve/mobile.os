/**
 * Evaluates the configuration for a single filesystem image build.
 */
{ pkgs
, modules ? []
, config ? {}
}:
let config' = config; in
rec {
  module = { imports = [ ./. ]; };
  config = (pkgs.lib.evalModules {
    modules = [
      { _module.args.pkgs = pkgs; }
      module
      config'
    ] ++ modules;
  }).config;
}
