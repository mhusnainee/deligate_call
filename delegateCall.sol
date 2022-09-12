// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract one {
    uint public num1;
    uint public num2;

    function set1(uint _one) public {
        num1 = _one;
    }
}

contract two {

    uint public num1;
    uint public num2;

    function set1(address _a, uint _num) public {
        (bool success, ) = _a.delegatecall(abi.encodeWithSelector(one.set1.selector, _num));
        require(success, "Call failed");
        //_a.set1(num1);
    }


}
