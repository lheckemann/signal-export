{ lib
, buildPythonPackage
, fetchPypi
, sqlcipher
}:

buildPythonPackage rec {
  pname = "pysqlcipher3";
  version = "1.0.3";

  buildInputs = [ sqlcipher ];

  src = fetchPypi {
    inherit pname version;
    sha256 = "694e5bbb6ece8a064bd55f261e54b9ffbb3af1784afdc4dce4948a0251a8a430";
  };

  meta = with lib; {
    description = "DB-API 2.0 interface for SQLCIPHER 3.x";
    homepage = https://github.com/rigglemania/pysqlcipher3;
    license = licenses.zlib/libpng;
    # maintainers = [ maintainers. ];
  };
}
