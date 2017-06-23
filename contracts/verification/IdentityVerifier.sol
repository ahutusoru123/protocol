pragma solidity ^0.4.8;

import './Verifier.sol';
import './Verifiable.sol';

/**
 * Implementation of Verifier interface that always returns the input segment hash as the result
 */
contract IdentityVerifier is Verifier {

    function verify(uint256 _jobID, uint256 _segmentSequenceNumber, bytes32 _code, bytes32 _inputSegment, address _callbackContract) returns (bool) {
        bytes32 result = _inputSegment;

        Verifiable verifiableContract = Verifiable(_callbackContract);
        if (verifiableContract.receiveVerification(_jobID, _segmentSequenceNumber, result, false) == false) {
            // Call the receiveVerificaiton on the callbackContract didn't succeed
            throw;
        }

        return true;
    }


}
