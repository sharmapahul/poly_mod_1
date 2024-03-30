// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "./ERC721.sol";
import "./ERC721A.sol";

contract antartica2 is Ownable, ERC721A {
    uint256 public constant MAX_SUPPLY = 200; 
    uint256 public constant PRICE_PER_TOKEN = 0.02 ether; // Doubled price per token
    uint256 public immutable START_TIME;
    bool public mintPaused;
    string private _baseTokenURI;

    constructor(uint256 _startTime, bool _paused) ERC721A("TRYING2", "TRY2") {
        START_TIME = _startTime;
        mintPaused = _paused;
    }

    function mint(address to, uint256 quantity) external payable {
        require(!mintPaused, "Mint is paused");
        require(block.timestamp >= START_TIME, "Sale not started");
        require(_totalMinted() + quantity <= MAX_SUPPLY, "Max Supply Hit");
        require(msg.value >= quantity * PRICE_PER_TOKEN, "Insufficient Funds");
        _mint(to, quantity);
    }

    function withdraw() external onlyOwner {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success, "Transfer Failed");
    }

    function setBaseURI(string calldata baseURI) external {
        _baseTokenURI = "https://lime-abundant-peafowl-776.mypinata.cloud/ipfs/QmQpWHw1RHCK8Ybax72PFm7gyQvZ3xSarpyoB6WMwD8phV/";
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    function pauseMint(bool _paused) external onlyOwner {
        require(!mintPaused, "Contract paused.");
        mintPaused = _paused;
    }

    function promptDescription() public pure returns (string memory des) {
        return (
            "many people living peacefully in Antarctica"
        );
    }
}
