pragma solidity ^0.8.0;

contract Counter{
    uint counter;

    function getCount() public view returns (uint){
        return counter;
    }

    function count1more() public{
        counter++;
    }
}