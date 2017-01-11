pragma solidity ^0.4.4;

import 'dao/Proxy.sol';

library CreatorProxy {
    function create(address _auth, bytes32 _ident) returns (Proxy)
    { return new Proxy(_auth, _ident); }

    function version() constant returns (string)
    { return "v0.5.0 (e5ab2009)"; }

    function abi() constant returns (string)
    { return '[{"constant":false,"inputs":[{"name":"_gates","type":"address[]"},{"name":"_idents","type":"bytes32[]"}],"name":"initRing","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_target","type":"address"},{"name":"_value","type":"uint256"},{"name":"_transaction","type":"bytes"}],"name":"request","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"kill","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"getIdent","outputs":[{"name":"","type":"bytes32"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_index","type":"uint256"}],"name":"callAt","outputs":[{"name":"","type":"address"},{"name":"","type":"uint256"},{"name":"","type":"bytes"},{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_index","type":"uint256"}],"name":"authorize","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_index","type":"uint256"}],"name":"run","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"queueLen","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_index","type":"uint256"}],"name":"isAuthorized","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"_ring","type":"uint256"},{"name":"_gate","type":"uint256"}],"name":"authAt","outputs":[{"name":"","type":"address"},{"name":"","type":"bytes32"}],"payable":false,"type":"function"},{"inputs":[{"name":"_auth","type":"address"},{"name":"_ident","type":"bytes32"}],"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":true,"name":"index","type":"uint256"}],"name":"CallRequest","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"index","type":"uint256"},{"indexed":true,"name":"node","type":"address"}],"name":"CallAuthorized","type":"event"},{"anonymous":false,"inputs":[{"indexed":true,"name":"index","type":"uint256"},{"indexed":true,"name":"block_number","type":"uint256"}],"name":"CallExecuted","type":"event"}]'; }
}
