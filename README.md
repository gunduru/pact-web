# 🚀 PACT | Social Savings & On-Chain Credit

[![Avalanche](https://img.shields.io/badge/Deployed_on-Avalanche_Fuji-red.svg?style=flat-square)](https://subnets-test.avax.network/c-chain)
[![Status](https://img.shields.io/badge/Status-Hackathon_MVP-success.svg?style=flat-square)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)]()

**A yield-bearing ROSCA protocol on Avalanche that transforms idle capital into active investments for humans and AI agents.**

### 🔗 Quick Links
* **🌐 Live Landing Page:** [PACT Vercel App](https://pact-web-six.vercel.app/)
* **📹 3-Min Pitch Video:** [Watch on Loom](https://www.loom.com/share/c82c15f07a9f41eeb0d7359bf98b1cb3)
* **⛓️ Smart Contract (Fuji Testnet):** [View on Snowtrace - 0xf2E2490720Fa866aF36F2B8Bc303Eaa179f57C8f](https://testnet.snowtrace.io/address/0xf2E2490720Fa866aF36F2B8Bc303Eaa179f57C8f)

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

PACT is designed as a highly composable financial primitive, leveraging the absolute cutting-edge infrastructure from both the Avalanche and Chainlink ecosystems.

* **Avalanche C-Chain:** The core settlement layer providing sub-second finality, extremely low transaction fees, and robust security for our ROSCA smart contracts.
* **Tether (USDT):** The primary stablecoin for deposits and payouts, ensuring protection against volatility for everyday human savers.
* **Chainlink CRE (Dynamic Yield Routing):** Instead of relying on a static single-protocol yield, PACT utilizes Chainlink CRE (Runtime Environment) workflows. Triggered via Cron jobs, the CRE dynamically fetches live APY rates from various DeFi protocols (e.g., Benqi, Aave), routes the idle capital to the highest-yielding pool, and verifies the entire execution through Chainlink's DON consensus.
* **x402 Protocol for AI Agents:** To solve the friction of AI agents participating in DeFi, PACT integrates the **x402 protocol**. This allows autonomous AI agents to make seamless, internet-native micro-contributions to our savings pools without managing complex gas/wallet dynamics.
* **ERC-8004 & Avalanche MCP:** Serving as a "Credit Sandbox" for the Agentic Economy. AI agents (developed on platforms like Kite) interact with our protocol via the Avalanche MCP API. Consistent, verified x402 payments are logged into the ERC-8004 Reputation Registry, allowing non-human actors to build verifiable on-chain credit scores and graduate to under-collateralized lending.

---

## 🛠️ Hackathon MVP Scope

For the hackathon, our execution focused on delivering the core skeleton of the protocol and proving our architectural thesis:

1. **Next.js/Vercel dApp:** A high-performance frontend demonstrating the vision and UI concepts, complete with ethers.js wallet connectivity.
2. **`PactVault.sol`:** The core smart contract deployed on the **Avalanche Fuji Testnet**. It handles circle creation, deposits, and payouts, with architectural hooks prepared for dynamic yield routing and ERC-8004.
3. **Chainlink CRE Simulation:** A TypeScript workflow script (`chainlink-cre-yield-router.ts`) demonstrating how the DON consensus dynamically routes capital to the best DeFi rates.
4. **MCP & x402 Agent Simulator:** A script (`ai-agent-mcp-simulator.js`) demonstrating how an AI agent interacts with the Avalanche blockchain to build its credit score.

---

## 💻 Smart Contract Deployment

The core Vault contract is deployed and verified on the **Avalanche Fuji Testnet**.

* **Contract Address:** `[CONTRACT_ADDRESS]`
* **Network:** Avalanche Fuji C-Chain
* **Explorer:** [Snowtrace Link]([SNOWTRACE_LINK])
  
---
*Built with 🔺 for the Avalanche Build Games 2026.*
