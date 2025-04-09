//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {BasicNft} from "src/BasicNft.sol";

contract MintBasicNft is Script {
    string public constant DOG =
        "ipfs://bafkreicrkawisfnbypdkmwfuykxvqcdpk53p5c6jiygdla3n57fodm3dmm";

    // Insert contract aaddress here
    address public constant CONTRACT_ADDRESS; //= contract_address;

    function run() external {
        mintNftOnContract(CONTRACT_ADDRESS);
    }

    function mintNftOnContract(address contractAddress) public {
        vm.startBroadcast();
        BasicNft(contractAddress).mintNft(DOG);
        vm.stopBroadcast();
    }
}
