// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title PactVault V2 (Hackathon MVP)
 * @dev A yield-bearing ROSCA protocol built for Avalanche.
 * Features architectural hooks for Chainlink CRE (Dynamic Yield Routing) 
 * and ERC-8004/x402 AI Agent Reputation.
 */
contract PactVault {
    uint256 public circleCount;

    struct Circle {
        uint256 id;
        string name;
        address creator;
        uint256 balance;
        bool isActive;
    }

    mapping(uint256 => Circle) public circles;
    mapping(uint256 => mapping(address => uint256)) public contributions;

    // Core Events
    event CircleCreated(uint256 indexed id, string name, address creator);
    event Deposited(uint256 indexed circleId, address indexed participant, uint256 amount);
    event PayoutExecuted(uint256 indexed circleId, address indexed winner, uint256 totalAmount);
    
    // 🤖 AI Agent Reputation Hook (x402 & ERC-8004)
    event AgentPaymentRegistered(address indexed agentIdentity, uint256 amount, string protocol);

    // 🔗 Chainlink CRE Dynamic Yield Hook
    event CapitalRouted(uint256 indexed circleId, string targetProtocol, uint256 amount);

    function createCircle(string memory _name) public returns (uint256) {
        circleCount++;
        circles[circleCount] = Circle(circleCount, _name, msg.sender, 0, true);
        emit CircleCreated(circleCount, _name, msg.sender);
        return circleCount;
    }

    function deposit(uint256 _circleId) public payable {
        require(circles[_circleId].isActive, "Circle is not active");
        require(msg.value > 0, "Must send some AVAX");

        circles[_circleId].balance += msg.value;
        contributions[_circleId][msg.sender] += msg.value;

        emit Deposited(_circleId, msg.sender, msg.value);

        // AI AGENT CREDIT SCORE: Consistent x402 payments build on-chain agent reputation.
        // TODO: Call ERC-8004 Reputation Registry to log positive credit score.
        emit AgentPaymentRegistered(msg.sender, msg.value, "PACT_ROSCA_x402");
    }

    // 🔗 NEW: The door for Chainlink CRE to dynamically route capital
    // In MVP, this emits an event to prove the DON consensus triggered the routing.
    function routeIdleCapital(uint256 _circleId, string memory _targetProtocol) public {
        require(circles[_circleId].isActive, "Circle is not active");
        uint256 amountToRoute = circles[_circleId].balance;
        require(amountToRoute > 0, "No funds to route");

        // DEFI ROUTING: In production, funds are transferred to the highest yielding pool (Aave, Benqi, etc.)
        // TODO: Interface with Aave/Benqi smart contracts for actual asset transfer.
        
        emit CapitalRouted(_circleId, _targetProtocol, amountToRoute);
    }

    function payout(uint256 _circleId, address payable _winner) public {
        require(msg.sender == circles[_circleId].creator, "Only creator can execute payout in MVP");
        require(circles[_circleId].isActive, "Circle is not active");
        
        uint256 totalPool = circles[_circleId].balance;
        require(totalPool > 0, "No funds to payout");

        // DEFI UNWINDING: In production, principal + accrued yield is withdrawn from the active protocol.
        // TODO: Unwind position from target yield protocol, calculate principal + accrued yield.

        circles[_circleId].balance = 0;
        circles[_circleId].isActive = false; 

        _winner.transfer(totalPool);
        emit PayoutExecuted(_circleId, _winner, totalPool);
    }
}
