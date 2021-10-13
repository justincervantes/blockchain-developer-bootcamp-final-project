pragma solidity >=0.5.1 <0.9.0;

contract Journal {
    uint posts;
    event LogEntry(string entry);

    function post(string memory entry) public {
        emit LogEntry(entry);
    }

    function () external payable  {
        revert();
    }
}
