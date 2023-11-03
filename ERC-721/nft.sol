//SPDX-License-Identifier:MIT
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFT is ERC721URIStorage, Ownable(msg.sender){
    constructor() ERC721 ("NFT shark", "NFT"){}
    
    function mint(
        address receiver,
        uint256 tokenid,
        string calldata _uri
    )
    external onlyOwner{
        _mint(receiver,tokenid);
        _setTokenURI(tokenid,_uri);

    }
}


