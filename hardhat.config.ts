import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const ALCHEMY_API_KEY = "Mf_-Y0XJnYNy4PVJ_ag2QJH662dMzvG4";
const GOERLI_PRIVATE_KEY = "fba742243e2b7fa2478af69272ffac26fbd8d82983008f391caa9ffb92f427d3";

const config: HardhatUserConfig = {
  solidity: "0.8.17",
  etherscan: {
    apiKey: "YG2VIRMTTTGUP4R6NMAFAEVXUENVY2V69G"
  },
  networks: {

    goerli: {
      url: `https://eth-goerli.alchemyapi.io/v2/${ALCHEMY_API_KEY}`,
      accounts: [GOERLI_PRIVATE_KEY],
    }

  },
};

export default config;
