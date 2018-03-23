pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Stas is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Stas(address _owner)  UpgradeableToken(_owner) {
    name = "Stas";
    symbol = "стас";
    totalSupply = 1000000000000;
    decimals = 9;

    balances[_owner] = totalSupply;
  }
}