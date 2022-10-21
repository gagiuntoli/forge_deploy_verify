// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Counter.sol";
import "../src/Counter1.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        // vm.broadcast();
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        Counter counter = new Counter();
        Counter1 counter1 = new Counter1();

        vm.stopBroadcast();
    }
}
