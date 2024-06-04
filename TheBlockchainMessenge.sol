// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract TheBlockchainMessenger {

    uint public changeCounter;

    address public owner;

    string public message;

    constructor(){
        owner=msg.sender;
    }

    function updateTheMessage(string memory _newMsg) public{
        if(owner==msg.sender){
            message =_newMsg;
            changeCounter++;
        }
    }
}