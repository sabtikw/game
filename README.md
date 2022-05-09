# game
hats ctf


# instructions:

## - add files to remix.ethereum.org (Game.sol , Helper.sol, Helper2.sol , Helper3.sol, Attacker.sol)
## - Compile Contracts (Game.sol , Helper.sol, Helper2.sol , Helper3.sol, Attacker.sol)
## - Deploy Contracts (Game.sol , Helper.sol, Helper2.sol , Helper3.sol, Attacker.sol)
### - Game.sol 
### - Helper.sol : copy Game Contract address and add in the Constructor before deploying
### - Helper2.sol : copy Game Contract address and add in the Constructor before deploying
### - Helper3.sol : copy Game Contract address and add in the Constructor before deploying
### - Attacker.sol : copy Game,Helper,Helper2,Helper3 Contract addresses and add in the Constructor before deploying

## - Execute the exploit (follow instructions in order please)
### - in Attacker contract execute (prepare) function
### - in Helper3 contract execute (prepare) function
### - in Helper contract execute (helperJoin) function
### - in Helper2 contract execute (helperJoin) function
### - in Attacker contract execute (attack) function

## in Game contract execute flagHolder, the flagHolder now should be the Attacker contract address 
