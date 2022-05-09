pragma solidity 0.8.12;




interface Game {

    function join() external returns (uint256[3] memory);
    function putUpForSale(uint256 _monId) external;
    function fight() external;
    function balanceOf(address owner) external returns (uint256);
    function swap(address _to, uint256 _monId1, uint256 _monId2) external;
}

contract Helper3 {


    address public game;
    

    constructor(address _game) {

        game = _game;
       
    }

    function prepare() external {
        uint256[3] memory tokenID;
        tokenID = Game(game).join();
        for (uint8 i; i < 3; i++) {
            Game(game).putUpForSale(tokenID[i]);
        }
    }
    

    
    function onERC721Received(address operator,address from,uint256 tokenId,bytes calldata data) external returns (bytes4){


return 0x150b7a02;
    }
}
