{python, fetchgit, fetchurl, ...}:
rec {
  distlib = python.pkgs.buildPythonPackage {
    name = "distlib-0.4.0";
    src = fetchgit {
    url = "https://github.com/pypa/distlib";
    rev = "aff2cbbc4e8a87b9440cb93472789a213813dbd6"; # 0.4.0
  };
    format = "pyproject";
    doCheck = false;
    propagatedBuildInputs = [
      setuptools
    ];
  };
  resolvelib = python.pkgs.buildPythonPackage {
    name = "resolvelib-1.2.0";
    src = fetchgit {
    url = "https://github.com/sarugaku/resolvelib";
    rev = "50f221ba803f6c127b6e20ff2c9a4470524e1239"; # 1.2.0
  };
    doCheck = false;
  };
  tree-format = python.pkgs.buildPythonPackage {
    name = "tree-format-0.1.2";
    src = fetchgit {
    url = "https://github.com/jml/tree-format";
    rev = "922c9d37661dfb884cd45a9a9a2533f5eabe09f5"; # 6yrs unchanged
  };
    doCheck = false;
  };


  rich = python.pkgs.rich;
  networkx = python.pkgs.networkx;
  packaging = python.pkgs.packaging;
  setuptools = python.pkgs.setuptools;
  toml = python.pkgs.toml;
  wheel = python.pkgs.wheel;
}
