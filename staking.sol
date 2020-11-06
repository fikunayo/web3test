pragma solidity 0.5.0;

contract giveAndGet {
    
    
    address owner;
    
    
    struct investor {
        address add;
        uint amount;
        uint time;
    }
     mapping (address => investor) public link;
     investor[] public allInvestors;
    
    uint amtRequired = 0.5 ether;
    
     modifier onlyOwner() {
    require(msg.sender == owner, "caller is the not the owner");
    _;
        }
         
        constructor () public {
        owner = msg.sender;
    }
    function aacceptIn() external payable{
        require(msg.value >= amtRequired);
        //allInvestors.push()
        investor[msg.sender] = investor(msg.sender, msg.value, block.timestamp);
       
    }