pragma solidity ^0.4.18;

import 'liability/MinerLiabilityValidator.sol';
import 'common/Object.sol';
import 'token/ERC20.sol';

contract RobotLiability is MinerLiabilityValidator, Object {
    /**
     * @dev Wrapped Ether token.
     */
    ERC20 public constant weth = ERC20(0xC00Fd9820Cd2898cC4C054B7bF142De637ad129A); 

    /**
     * @dev Objective execution cost in weth units.
     */
    uint256 public cost;

    /**
     * @dev Number of times to execute objective.
     */
    uint256 public count;

    /**
     * @dev Liability constructor.
     * @param _promisee A person to whom a promise is made.
     * @param _promisor A person who makes a promise.
     */
    function RobotLiability(
        bytes   _model,
        bytes   _objective,
        address _promisee,
        address _promisor,
        uint256 _cost,
        uint256 _count,
        uint256 _fee
    ) public {
        model    = _model;
        objective= _objective;
        promisee = _promisee;
        promisor = _promisor;
        cost     = _cost;
        count    = _count;
        fee      = _fee;
    }

    /**
     * @dev Set result of this liability
     * @param _result Result data hash
     */
    function setResult(bytes _result) public returns (bool success) {
        require(msg.sender == promisor);
        require(objective.length > 0);
        require(result.length == 0);
        
        Result(_result);
        result = _result;

        ValidationReady();

        return true;
    }

    /**
     *  Validation interface
     **/

    function confirmed() internal
    { require(weth.transfer(promisor, cost * count)); }

    function rejected() internal
    { require(weth.transfer(promisee, cost * count)); }

}
