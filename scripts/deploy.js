const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with:", deployer.address);

  // Load existing OCOS Token (ERC20Votes) address
  const OCOSTokenAddress = "0xYourGovernanceTokenAddress"; // Replace with actual OCOS token address

  const Token = await ethers.getContractAt("ERC20Votes", OCOSTokenAddress);

  // Deploy Timelock Controller
  const Timelock = await ethers.getContractFactory("OCOSTimelock");
  const minDelay = 86400; // 24 hours
  const proposers = [];
  const executors = ["0x0000000000000000000000000000000000000000"];
  const timelock = await Timelock.deploy(minDelay, proposers, executors);
  await timelock.deployed();
  console.log("Timelock deployed to:", timelock.address);

  // Deploy Governor
  const Governor = await ethers.getContractFactory("OCOSGovernor");
  const governor = await Governor.deploy(Token.address, timelock.address);
  await governor.deployed();
  console.log("Governor deployed to:", governor.address);

  // Deploy NFT Contract
  const NFT = await ethers.getContractFactory("OCOSAiNFT");
  const baseURI = "ipfs://QmYourBaseCID/"; // Replace with your IPFS base URI
  const nft = await NFT.deploy(baseURI);
  await nft.deployed();
  console.log("OCOS Ai NFT contract deployed to:", nft.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
