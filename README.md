# EclipseVotingDApp

![Eclipse Voting dApp](https://img.shields.io/badge/Eclipse-Voting%20dApp-blueviolet?style=for-the-badge)

A simple yet powerful voting decentralized application (dApp) built on [Eclipse](https://docs.eclipse.xyz), a Solana-powered Layer 2 blockchain. This project allows users to create proposals and cast votes using a Solidity smart contract, with a modern, user-friendly frontend. It showcases Eclipse’s scalability and Ethereum Virtual Machine (EVM) compatibility for fast, low-cost transactions.

## 🚀 Features

- **Create Proposals**: Users can submit new proposals with a name.
- **Cast Votes**: One vote per address, ensuring fair participation.
- **View Results**: Displays all proposals and their vote counts in a sleek UI.
- **Responsive Design**: Modern, professional interface with glassmorphism and gradient styling.
- **Eclipse Integration**: Leverages Eclipse’s high-throughput Layer 2 for efficient transactions.

## 📂 Project Structure

- **contracts/**
  - `Voting.sol` – Solidity smart contract for voting logic
- **scripts/**
  - `deploy.js` – Hardhat script to deploy the contract
- **test/**
  - `Voting.test.js` – Unit tests for the smart contract
- **frontend/**
  - `index.html` – Styled HTML frontend
  - `app.js` – JavaScript logic for contract interaction
- `README.md` – Project documentation


## 🛠️ Setup Instructions

### Prerequisites
- **Node.js** (v16 or higher)
- **Yarn** (package manager)
- **Solana CLI** (for network configuration)
- **Phantom** or **MetaMask** wallet (for testnet interaction)
- **Git** (for version control)

### Installation
 **Clone the Repository**:
   ```bash
   git clone https://github.com/josephalexofficial/EclipseVotingDApp.git
   cd eclipse-voting-dapp
