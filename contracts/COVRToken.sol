pragma solidity ^0.4.18;

/**
  * @title COVR Token
  * @copyright Crowd Coverage
 */

import "node_modules/zeppelin-solidity/contracts/token/ERC20/ERC20Basic.sol";
import "node_modules/zeppelin-solidity/contracts/math/SafeMath.sol";
import "node_modules/zeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "node_modules/zeppelin-solidity/contracts/ownership/Ownable.sol";
import "node_modules/zeppelin-solidity/contracts/token/ERC20/BasicToken.sol";
import "node_modules/zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "node_modules/zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract COVRToken is MintableToken {
    string public name = "Crowd Coverage Token";
    string public symbol = "COVR";
    uint8 public decimals = 18;
    uint256 public constant MAX_SUPPLY = 4**9 * 10**18;

    function mintToken(address _to, uint256 _amount) public returns (bool) {
        if (totalSupply_.add(_amount) > MAX_SUPPLY) {
            return false;
            return super.mint(_to, _amount);    
      }
    }
}