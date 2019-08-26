pragma solidity >=0.4.21 <0.6.0;

contract MerklePay {
  bytes32 root;

  function validateMerkleProof(bytes32[] memory proof, uint index, uint256 value, address payee) public view returns(bool isValid){
    bytes32 calculatedRoot = keccak256(abi.encodePacked(value, payee));
  
    for(uint256 i = 0; i < proof.length; i++){
      if(index%2 == 0) keccak256(abi.encodePacked(calculatedRoot, proof[i]));
      else keccak256(abi.encodePacked(proof[i], calculatedRoot));
    }
    return (calculatedRoot == root);
  }
}