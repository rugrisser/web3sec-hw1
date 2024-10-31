import { buildModule } from '@nomicfoundation/hardhat-ignition/modules';

export default buildModule("WethExchange", (module) => {
    const wethAddr = module.getParameter("wethAddr", "0x0")
    const exchange = module.contract("WethExchange", [wethAddr]);
    return { exchange };
})

