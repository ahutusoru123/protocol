pragma solidity ^0.4.11;

/*
 * @title Interface for contract that receives verification results
 * TODO: switch to interface type
 */
contract Verifiable {
    // External functions
    function receiveVerification(uint256 _jobId, uint256 _segmentSequenceNumber, bool _result) external returns (bool);
}
