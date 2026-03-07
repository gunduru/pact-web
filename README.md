# 🚀 PACT | Social Savings & On-Chain Credit

[![Avalanche](https://img.shields.io/badge/Deployed_on-Avalanche_Fuji-red.svg?style=flat-square)](https://subnets-test.avax.network/c-chain)
[![Status](https://img.shields.io/badge/Status-Hackathon_MVP-success.svg?style=flat-square)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)]()

**A yield-bearing ROSCA protocol on Avalanche that transforms idle capital into active investments for humans and AI agents.**

### 🔗 Quick Links
* **🌐 Live Landing Page:** [pactfi.vercel.app]([VERCEL_LINK])
* **📹 2-Min Pitch Video:** [Watch on Loom](https://www.loom.com/share/c82c15f07a9f41eeb0d7359bf98b1cb3)
* **⛓️ Smart Contract (Fuji Testnet):** [View on Snowtrace]([SNOWTRACE_LINK])

---

## 🌍 The Problem
Globally, over **$1 trillion** flows through informal savings circles (Tandas, Moai, Gold Days). This massive capital sits idle, loses value to inflation, and relies entirely on fragile social trust, creating massive default risks. 

In the Web3 space, DeFi solves trust but kills capital efficiency through permanent **over-collateralization**. Furthermore, as the Agentic Economy rises, autonomous AI agents suffer from a "cold start" problem: they lack verifiable on-chain credit history to access capital.

## 💡 The Solution: Enter PACT
PACT brings traditional social savings circles on-chain. We replace fragile social pressure with trustless smart contracts on the **Avalanche C-Chain**. 
1. **Zero Idle Capital:** Pooled funds are automatically routed to DeFi strategies to generate continuous yield.
2. **On-Chain Credit:** Every successful payment cycle builds a verifiable reputation, paving the way for under-collateralized DeFi for both humans and AI Agents.

---

## 🏗️ Technical Architecture & Integrations

PACT is designed as a highly composable financial primitive.

* **Avalanche C-Chain:** Core settlement layer providing sub-second finality and low transaction fees.
* **Tether (USDT):** The primary stablecoin for deposits and payouts, ensuring protection against volatility.
* **Benqi Finance (Yield Routing):** Idle capital in the pool is supplied to Benqi to generate interest while users wait for their payout turn.
* **Chainlink Automation (Keepers):** Trustless execution of monthly payouts without human intervention.
* **Avalanche MCP API & Kite (gokite.ai):** Serving as a "Credit Sandbox", autonomous AI agents interact with our protocol via MCP API. Leveraging the **ERC-8004** standard, agents make automated micro-contributions to mathematically prove their reliability and build an on-chain identity.

---

## 🛠️ Hackathon MVP Scope

For the Avalanche Build Games, our execution focused on delivering the core skeleton of the protocol:

1. **Vercel Landing Page:** An HTML based frontend showcasing the vision and UI concepts.
2. **`PactVault.sol`:** The core smart contract deployed on the Avalanche Fuji Testnet. It handles circle creation, deposits, and payouts, with architectural hooks prepared for Benqi and ERC-8004.
3. **MCP API Agent Simulator:** A Python-based script (`ai_agent_simulator.py` - *coming soon*) demonstrating how an AI agent from Kite interacts with the Avalanche blockchain.

---

## 💻 Smart Contract Deployment

The core Vault contract is deployed and verified on the **Avalanche Fuji Testnet**.

* **Contract Address:** `[CONTRACT_ADDRESS]`
* **Network:** Avalanche Fuji C-Chain
* **Explorer:** [Snowtrace Link]([SNOWTRACE_LINK])
  
---
*Built with 🔺 for the Avalanche Build Games 2026.*
