{ lib, buildPythonPackage, fetchPypi, click, websockets, aiofiles, aiohttp
, requests, syslog_rfc5424_formatter, itsdangerous, autobahn, twisted, pytest
, pytest-aiohttp }:

buildPythonPackage rec {
  pname = "faraday_agent_dispatcher";
  version = "1.0";

  src = ../..;

  # TODO fixme
  doCheck = false;

  propagatedBuildInputs = [
    click
    websockets
    aiofiles
    aiohttp
    requests
    syslog_rfc5424_formatter
    itsdangerous
    autobahn
    twisted
  ];
  checkInputs = [ pytest pytest-aiohttp ];

}
