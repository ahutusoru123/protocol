pragma solidity ^0.4.8;

/**
 * Interface for verification. Can be backed by any implementation
 * of off chain verificaiton of on chain work such as oracle,
 * secure hardware, Truebit, etc.
 */
contract Verifier {
    /**
     * Function that gets invoked on a verifier implementation that should perform
     * verification and then call back to a Verifiable contract.
     * @param _jobID Unique identifier for the job being verified
     * @param _segmentSequenceNumber Segment being verified within the job
     * @param _code Swarm hash of the binary to execute off chain
     * @param _inputSegment Swarm hash of the input data segment for verification
     * @param _callbackContract Address of the contract to call back to and invoke the reportVerification method with the result
     */
    function verify(uint256 _jobID, uint256 _segmentSequenceNumber, bytes32 _code, bytes32 _inputSegment, address _callbackContract) returns (bool);
}
