pragma solidity >=0.5.1 <0.9.0;

contract Donations {
    address payable private owner;
    bool private isLocked;

    constructor() payable public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized.");
        _;
    }

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event LockContract(uint time);
    event UnlockContract(uint time);

    function transferOwnership(address payable newOwner) onlyOwner public {
        owner = newOwner;
        emit OwnershipTransferred(msg.sender, newOwner);
    }

    function withdraw(uint _amount) onlyOwner public {
        require(!isLocked);
        require(address(this).balance > _amount);
        owner.transfer(_amount);
    }

    function lockContract() onlyOwner public {
        isLocked = true;
        emit LockContract(block.timestamp);
    }

    function unlockContract() onlyOwner public {
        isLocked = false;
        emit UnlockContract(block.timestamp);
    }
}
