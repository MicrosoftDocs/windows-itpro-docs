---
author: paolomatarazzo
ms.author: paoloma
ms.date: 10/30/2023
ms.topic: include
---

### Allow network unlock at startup

This policy setting controls whether a BitLocker-protected device that is connected to a trusted wired Local Area Network (LAN) can create and use Network Key Protectors on TPM-enabled computers to automatically unlock the operating system drive when the computer is started.

If you enable this policy, devices configured with a *BitLocker Network Unlock certificate* can create and use Network Key Protectors. To use a Network Key Protector to unlock the computer, both the computer and the BitLocker Drive Encryption Network Unlock server must be provisioned with a Network Unlock certificate. The Network Unlock certificate is used to create Network Key Protectors, and protects the information exchanged with the server to unlock the computer.

The Group Policy setting **Computer Configuration** > **Windows Settings** > **Security Settings** > **Public Key Policies** > **BitLocker Drive Encryption Network Unlock Certificate** can be used on the domain controller to distribute this certificate to computers in the organization. This unlock method uses the TPM on the computer, so computers that don't have a TPM can't create Network Key Protectors to automatically unlock with Network Unlock.

If you disable or don't configure this policy setting, BitLocker clients won't be able to create and use Network Key Protectors.

> [!NOTE]
> For reliability and security, computers should also have a TPM startup PIN that can be used when the computer is disconnected from the wired network or the server at startup.

For more information about Network Unlock feature, see [BitLocker: How to enable Network Unlock](../network-unlock.md)

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating System Drives** |
