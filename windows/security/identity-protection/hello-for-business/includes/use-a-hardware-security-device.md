---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Use a hardware security device

A Trusted Platform Module (TPM) provides additional security benefits over software because data protected by it can't be used on other devices.

- If you enable this policy setting, Windows Hello for Business provisioning only occurs on devices with usable 1.2 or 2.0 TPMs. You can optionally exclude TPM revision 1.2 modules, which prevents Windows Hello for Business provisioning on those devices
    > [!TIP]
    > The TPM 1.2 specification only allows the use of RSA and the SHA-1 hashing algorithm. TPM 1.2 implementations vary in policy settings, which may result in support issues as lockout policies vary. It's recommended to exclude TPM 1.2 devices from Windows Hello for Business provisioning.
-If you disable or don't configure this policy setting, the TPM is still preferred, but all devices can provision Windows Hello for Business using software if the TPM is nonfunctional or unavailable.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/`[RequireSecurityDevice](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciesrequiresecuritydevice)<br><br>`./Device/Vendor/MSFT/PassportForWork/{TenantId}/Policies/ExcludeSecurityDevices/`[TPM12](/windows/client-management/mdm/passportforwork-csp#devicetenantidpoliciesexcludesecuritydevicestpm12) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** |
