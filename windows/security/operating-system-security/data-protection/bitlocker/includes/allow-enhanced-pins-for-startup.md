---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Allow enhanced PINs for startup

This setting permits the use of enhanced PINs when an unlock method that includes a PIN is used.

Enhanced startup PINs permit the use of characters (including uppercase and lowercase letters, symbols, numbers, and spaces).

> [!IMPORTANT]
> Not all computers support enhanced PIN characters in the preboot environment. It's strongly recommended that users perform a system check during the BitLocker setup to verify that enhanced PIN characters can be used.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesEnhancedPIN](/windows/client-management/mdm/bitlocker-csp#systemdrivesenhancedpin) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating System Drives** |
