# HW-1

## Deployed contracts (Sepolia)

Token: [0x6bb2f69f6d63e3f8a8d42b53403c38f60a5717c0](https://sepolia.etherscan.io/address/0x6bb2f69f6d63e3f8a8d42b53403c38f60a5717c0)

Weth Exchange: [0x9135c2456dcb548abe1a878b55ead4581a887c67](https://sepolia.etherscan.io/address/0x9135c2456dcb548abe1a878b55ead4581a887c67)

## Contract build and deploy
Token:
```shell
npx hardhat ignition deploy ignition/modules/CiderToken.ts --network sepolia
```

Weth Exchange:
```shell
npx hardhat ignition deploy ignition/modules/WethExchange.ts --parameters ignition/parameters/sepolia.json --network sepolia
```
