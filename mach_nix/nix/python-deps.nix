{python, fetchgit, fetchurl, ...}:
rec {
  distlib = python.pkgs.buildPythonPackage {
    name = "distlib-0.4.0";
    src = fetchgit {
    url = "https://github.com/pypa/distlib";
    rev = "aff2cbbc4e8a87b9440cb93472789a213813dbd6"; # 0.4.0
    sha256 = "1vvhclqf1bczq7av1xsyzqi1cgbdaig42fld052z90khnbw29381";
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
    sha256 = "0467czv9fbj78yi1ql5ia1xpcap6gmq16pwacg51rzjvk7ackxzi";
  };
    doCheck = false;
  };
  tree-format = python.pkgs.buildPythonPackage {
    name = "tree-format-0.1.2";
    src = fetchgit {
    url = "https://github.com/jml/tree-format";
    rev = "922c9d37661dfb884cd45a9a9a2533f5eabe09f5"; # 6yrs unchanged
    sha256 = "1j4y9jlqz434k59l07nnkg6b5mx7cywll0lkd3h1gg0xxapj14fm";
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
