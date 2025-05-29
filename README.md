# 🎬 OCOS Ai Film

**OCOS Ai Film** is an innovative Web3 platform that allows users to create AI-generated videos directly from text prompts. By integrating cutting-edge artificial intelligence with blockchain technology, OCOS empowers creators to transform words into cinematic experiences, tokenize their stories as NFTs, and share them globally.

> "Create what you imagine. Transform your thoughts into motion."

---

## 🌐 Project Purpose

OCOS Ai Film democratizes storytelling by allowing anyone to:
- Generate short films using AI video engines
- Export their creations as blockchain-based NFTs
- Vote on community films via DAO governance
- Earn rewards for top-rated creative work

---

## 🔧 Core Features

| Module                  | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| 🧠 **Text-to-Video AI**     | Transforms written prompts into short cinematic AI-generated videos       |
| 🖼 **NFT Export**            | Each video can be minted as an ERC-721 NFT on the BNB or Ethereum network |
| 🔗 **Web3 Wallet Login**    | WalletConnect & MetaMask support for user authentication                  |
| 📊 **DAO Voting System**    | Community votes on submitted films; top creators earn OCOS token rewards  |
| 💬 **AI Dialog Generator**  | Generates speech and voiceovers from scripts using advanced voice AI      |
| 📱 **TikTok / Reels Export**| AI-generated videos can be downloaded in shareable formats                |

---

## 🧱 Tech Stack

| Layer        | Technology                                            |
|--------------|--------------------------------------------------------|
| Frontend     | React.js, Tailwind CSS, Web3Modal                      |
| Backend      | Node.js, Express, MongoDB, IPFS (for media storage)    |
| AI Services  | OpenAI (GPT), RunwayML (video), ElevenLabs (voice)     |
| Blockchain   | Solidity, Hardhat, Ethers.js, BNB Smart Chain / ETH    |
| NFT Minting  | ERC-721 standard with metadata stored on IPFS         |
| Deployment   | Vercel, Netlify, or AWS Amplify                        |

---

## 🚀 How It Works

1. **Login** with Web3 wallet (MetaMask / WalletConnect)
2. **Enter a text prompt** (e.g., “A girl flying through stars with a talking cat”)
3. **OCOS Ai Film** processes and renders the video
4. **Preview and mint** the result as an NFT
5. **Share** it or submit to the community DAO voting system

---

## 🔐 Blockchain Integration

| Chain    | Usage                      |
|----------|----------------------------|
| BNB Chain (BSC) | Primary deployment for NFT minting |
| Ethereum        | Optional L1 minting for high-value films |
| IPFS            | Permanent decentralized media storage |
| OCOS Token      | Utility & reward token for the platform |

---

## 🗳 DAO Governance

All minted films are visible in the community voting panel.

- Voting is powered by the OCOS Governor contract
- Token holders vote on:
  - Featured films of the week
  - Platform improvements
  - Fund distribution
- Top creators earn OCOS rewards

---

## 📈 Future Roadmap

| Phase | Milestone                            | Status     |
|-------|---------------------------------------|------------|
| Q2    | Text-to-video AI engine integration   | ✅ In Progress |
| Q2    | NFT minting and metadata hosting      | ✅ Planned |
| Q3    | DAO-based film voting                 | 🔜 Upcoming |
| Q3    | Mobile-friendly interface             | 🔜 Upcoming |
| Q4    | Creator analytics + revenue module    | 🔜 Upcoming |

---

## 🧪 Running Locally

```bash
git clone https://github.com/OCOSOfficial/OCOS-Ai-Film.git
cd OCOS-Ai-Film
npm install
npm run dev
