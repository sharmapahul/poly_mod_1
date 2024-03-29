# Create, Store, and Deploy Unique NFT Collection

This README provides detailed instructions on creating a 5-item NFT collection using advanced AI models, storing the generated images on IPFS through pinata.cloud, and deploying an ERC721 or ERC1155 contract on the Goerli Ethereum Testnet. It also covers mapping the NFTs to the Polygon network for enhanced accessibility, scripting batch minting of NFTs, transferring NFTs from Ethereum to Polygon Mumbai via the FxPortal Bridge, and testing the balanceOf function to verify successful transfers.

## Table of Contents

- [Generate Unique Images](#generate-unique-images)
- [Store Images on IPFS](#store-images-on-ipfs)
- [Deploy Your NFT Contract](#deploy-your-nft-contract)
- [Map Your NFT Collection to Polygon](#map-your-nft-collection-to-polygon)
- [Batch Mint Your NFTs](#batch-mint-your-nfts)
- [Transfer NFTs to Polygon Mumbai](#transfer-nfts-to-polygon-mumbai)
- [Test balanceOf Function on Mumbai](#test-balanceof-function-on-mumbai)

## Generate Unique Images

Utilize cutting-edge AI models such as DALLE 2 or Midjourney to generate unique and captivating images for your NFT collection. These models excel in generating high-quality visuals based on user-provided prompts. Refer to their respective documentation for setup and usage instructions.

## Store Images on IPFS

After generating the images, store them securely on IPFS using pinata.cloud. IPFS (InterPlanetary File System) enables decentralized storage and retrieval of files, ensuring robustness and accessibility. Pinata.cloud simplifies the interaction with IPFS, streamlining the upload process.

Follow these steps to store your images on IPFS via pinata.cloud:

1. Sign up for a pinata.cloud account (if not already done).
2. Upload your generated images to pinata.cloud.
3. Record the IPFS hash associated with each uploaded image.

Ensure to retain the IPFS hashes for future reference.

## Deploy Your NFT Contract

Choose between deploying an ERC721 or ERC1155 contract for your NFT collection, tailored to your specific requirements. These Ethereum token standards specialize in creating non-fungible tokens (NFTs), offering flexibility and versatility.

Deploy your NFT contract to the Goerli Ethereum Testnet following these steps:

1. Configure your development environment with a robust Ethereum development framework like Hardhat.
2. Craft the smart contract code for your NFT collection, incorporating essential functionalities such as minting and metadata management. Include a `promptDescription` function returning the prompt utilized for image generation.
3. Compile the smart contract using Hardhat.
4. Deploy the compiled contract to the Goerli Ethereum Testnet using Hardhat's deployment scripts or alternative deployment methodologies.
5. Record the deployed contract address for future use.

## Map Your NFT Collection to Polygon

Although optional, mapping your NFT collection to the Polygon network enhances accessibility and scalability. Polygon, a Layer 2 scaling solution for Ethereum, offers expedited and cost-effective transactions, augmenting user experience.

To map your NFT collection to the Polygon network:

1. Establish an account on the Polygon network.
2. Utilize the Polygon token mapper tool to map your ERC721 or ERC1155 contract to the Polygon network, enabling seamless interoperability.
3. Upon completion of the mapping process, document the new contract address on the Polygon network.

## Batch Mint Your NFTs

Efficiently mint all NFTs in your collection through a tailored Hardhat script, streamlining the process and enhancing productivity. Hardhat, an Ethereum development environment, equips developers with a comprehensive suite of tools for smart contract compilation, testing, and deployment.

Develop a Hardhat script performing the following tasks:

1. Establish connection with the deployed NFT contract on the Goerli Ethereum Testnet utilizing the previously recorded contract address.
2. Invoke the minting function iteratively for each generated image, supplying the corresponding IPFS hash and any supplementary metadata.
3. Ensure unique token IDs are assigned to each minted NFT.

Execute the script using Hardhat to seamlessly mint all NFTs within your collection.

## Transfer NFTs to Polygon Mumbai

Leverage the FxPortal Bridge to transfer your NFTs from Ethereum to Polygon Mumbai, facilitating cross-chain asset movement. The FxPortal Bridge serves as a conduit for asset transfer between Ethereum and Polygon networks, ensuring interoperability and accessibility.

Craft a Hardhat script executing the following steps:

1. Establish connection with the deployed NFT contract on the Goerli Ethereum Testnet.
2. Authorize the transfer of NFTs to the FxPortal Bridge contract for seamless transfer.
3. Initiate the deposit of NFTs to the FxPortal Bridge contract.
4. Monitor and await completion of the bridging process, acknowledging the time required for asset transfer.

Upon script execution completion, your NFTs should be successfully transferred to Polygon Mumbai.

## Test balanceOf Function on Mumbai

Verify the successful transfer of NFTs to Polygon Mumbai by testing the balanceOf function, ensuring accurate ownership representation. Following these steps:

1. Establish connection with the NFT contract deployed on the Polygon Mumbai network, utilizing the contract address obtained during the mapping process.
2. Invoke the balanceOf function for the desired Ethereum address, verifying the quantity of NFTs owned by the address on Mumbai.

Through rigorous testing of the balanceOf function, validate the seamless transfer and accessibility of your NFTs on the Polygon Mumbai network.

For any further assistance or guidance, do not hesitate to reach out. Happy creation and deployment of your unique NFT collection!
