pragma solidity ^0.5.4;


contract ConvertStringByte {
    
    uint256 private constant size = 32; 
    
    function convertStringToByte32(string memory _texte) public pure returns(bytes32 result){
        
        assembly {
            result := mload(add(_texte, 32))
        }
        
    }
    
    
    function convertByte32ToString(bytes32  _bytes32) public pure returns (string memory){
        
        bytes memory bytesArray = new bytes(size);
        for (uint256 i; i < size; i++) {
            bytesArray[i] = _bytes32[i];
        }
        return string(bytesArray);
        
    }
    
       
}