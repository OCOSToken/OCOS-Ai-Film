// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/governance/TimelockController.sol";

/// @title OCOS DAO Timelock Contract
/// @notice Enforces a delay between proposal approval and execution
contract OCOSTimelock is TimelockController {
    constructor(
        uint256 minDelay,              // Delay in seconds before execution
        address[] memory proposers,    // Addresses allowed to propose
        address[] memory executors     // Addresses allowed to execute
    )
        TimelockController(minDelay, proposers, executors)
    {}
}
