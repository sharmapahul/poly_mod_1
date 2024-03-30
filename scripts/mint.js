const { ethers } = require("hardhat");

async function main() {
  const contractAddress = "0x6B28e97Fd505d759F4dB115C41398D8A384eE3Ce";
  const receiverAddress = "0x9dB01459c498fB5D18b23d537e1A50A749CeF092";
  const quantity = 2;
  const value = ethers.parseEther("0.03");

  const NFTs = await ethers.getContractAt("antartica2", contractAddress);
  const mintTokens = await NFTs.mint(receiverAddress, quantity, {
    value: value,
  });

  console.log(
    `Transaction Hash: ${mintTokens.hash}`
  );
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
