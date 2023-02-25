pragma solidity ^0.8.0;
contract QuoteExample{

    string _Quote;
    uint lock = 0;

    address admin = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

     modifier OnlyOwner(){
        require(msg.sender == admin, "You are not Admin, so get out");
        require(lock == 0, "Please want till the transction is completed");
        lock = 1;
        _;
        lock = 0;
    }

    function setQuote(string memory a) OnlyOwner public{
        _Quote = a;
    }

    function getQuote() public view returns (string memory){
        return _Quote;
    }
}