import { buildModule } from '@nomicfoundation/hardhat-ignition/modules';

const INITIAL_OWNER = "0xECA33ba28c1Fb5c443c3C7ff536397A8B0eB5443";

export default buildModule("CiderToken", (module) => {
    const token = module.contract("CiderToken", [INITIAL_OWNER]);
    return { token };
});
