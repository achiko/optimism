// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { ICrossDomainMessenger } from "interfaces/universal/ICrossDomainMessenger.sol";
import { ISuperchainConfig } from "interfaces/L1/ISuperchainConfig.sol";
import { IOptimismPortal2 } from "interfaces/L1/IOptimismPortal2.sol";
import { ISystemConfig } from "interfaces/L1/ISystemConfig.sol";

interface IL1CrossDomainMessenger is ICrossDomainMessenger {
    function PORTAL() external view returns (IOptimismPortal2);
    function initialize(
        ISuperchainConfig _superchainConfig,
        IOptimismPortal2 _portal,
        ISystemConfig _systemConfig
    )
        external;
    function portal() external view returns (IOptimismPortal2);
    function superchainConfig() external view returns (ISuperchainConfig);
    function systemConfig() external view returns (ISystemConfig);
    function version() external view returns (string memory);

    function __constructor__() external;
}
