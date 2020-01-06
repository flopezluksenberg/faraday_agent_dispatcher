{ lib, buildPythonPackage, fetchPypi }:

buildPythonPackage rec {
  pname = "syslog-rfc5424-formatter";
  version = "1.2.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "113fc9wbsbb63clw74f7riyv37ar1131x8lc32q2cvqd523jqsns";
  };

  # TODO fixme
  doCheck = false;

  propagatedBuildInputs = [ ];
  checkInputs = [ ];

}
