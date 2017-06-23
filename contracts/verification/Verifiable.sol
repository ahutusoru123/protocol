pragma solidity ^0.4.8;

/**
 * Interface for a contract that will receive verification results.
 */
contract Verifiable {

    /**
     * Function that gets invoked on a Verifiable implementation to receive the results of verification
     * @param _jobID The unique identifier for the job being verified
     * @param _segmentSequenceNumber The segment number being verified
     * @param _result The hash of the result of the verification computation.
     * @param _error Returns true if the verification failed due to some error.
     */
    function receiveVerification(uint256 _jobID, uint256 _segmentSequenceNumber, bytes32 _result, bool _error) returns (bool);
}
