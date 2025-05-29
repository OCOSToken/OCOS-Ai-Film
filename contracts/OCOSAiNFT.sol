// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

/// @title OCOS Ai Film NFT
/// @notice ERC-721 contract for minting AI-generated film NFTs
contract OCOSAiNFT is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    /// @notice Base URI for IPFS metadata (can be updated by owner)
    string private baseURI;

    constructor(string memory initBaseURI) ERC721("OCOS Ai Film", "OAI-FILM") {
        baseURI = initBaseURI;
    }

    /// @notice Allows owner to update base URI
    function setBaseURI(string memory newBaseURI) external onlyOwner {
        baseURI = newBaseURI;
    }

    /// @notice Returns base URI (used internally)
    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }

    /// @notice Mints a new NFT to recipient with IPFS metadata URI
    /// @param recipient Address to receive the NFT
    /// @param tokenURI IPFS metadata URI (e.g. ipfs://Qm.../metadata.json)
    function mintNFT(address recipient, string memory tokenURI) external onlyOwner returns (uint256) {
        _tokenIds.increment();
        uint256 newTokenId = _tokenIds.current();

        _mint(recipient, newTokenId);
        _setTokenURI(newTokenId, tokenURI);

        return newTokenId;
    }

    /// @notice Returns total number of minted NFTs
    function totalSupply() external view returns (uint256) {
        return _tokenIds.current();
    }
}
