---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Configure preboot recovery message and URL

This policy setting is used to configure the recovery message and to replace the existing URL that is displayed on the preboot recovery screen when the OS drive is locked.

- If you select the **Use default recovery message and URL** option, the default BitLocker recovery message and URL are displayed in the preboot key recovery screen. If you have previously configured a custom recovery message or URL and want to revert to the default message, you must keep the policy enabled and select the **Use default recovery message and URL** option
- If you select the **Use custom recovery message** option, the message you add to the **Custom recovery message option** text box is displayed in the preboot key recovery screen. If a recovery URL is available, include it in the message
- If you select the **Use custom recovery URL** option, the URL you add to the **Custom recovery URL option** text box replaces the default URL in the default recovery message, which is displayed in the preboot key recovery screen

> [!NOTE]
> Not all characters and languages are supported in pre-boot. It is strongly recommended that you test that the characters you use for the custom message or URL appear correctly on the pre-boot recovery screen.

For more information about the BitLocker preboot recovery screen, see [Preboot recovery screen](/windows/security/operating-system-security/data-protection/bitlocker/preboot-recovery-screen).

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesRecoveryMessage](/windows/client-management/mdm/bitlocker-csp#systemdrivesrecoverymessage) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating System Drives** |
