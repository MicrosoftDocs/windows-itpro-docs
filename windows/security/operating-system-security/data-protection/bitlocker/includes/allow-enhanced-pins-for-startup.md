---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Allow enhanced PINs for startup

This policy setting allows you to configure whether or not enhanced startup PINs are used with BitLocker. Enhanced startup PINs permit the use of characters including uppercase and lowercase letters, symbols, numbers, and spaces. If you enable this policy setting, all new BitLocker startup PINs set will be enhanced PINs. Note:   Not all computers may support enhanced PINs in the pre-boot environment. It is strongly recommended that users perform a system check during BitLocker setup. If you disable or do not configure this policy setting, enhanced PINs will not be used.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesEnhancedPIN](/windows/client-management/mdm/bitlocker-csp#systemdrivesenhancedpin) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
