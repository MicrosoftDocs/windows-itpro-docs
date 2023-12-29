---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Use biometrics

Windows Hello for Business enables users to use biometric gestures, such as face and fingerprints, as an alternative to the PIN gesture. However users must still configure a PIN to use in case of failures.

- If you enable or don't configure this policy setting, Windows Hello for Business allows the use biometric gestures
- If you disable this policy setting, Windows Hello for Business prevents the use of biometric gestures

> [!NOTE]
> Disabling this policy prevents the user of biometric gestures on the device for all account types.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/Biometrics/`[UseBiometrics](/windows/client-management/mdm/passportforwork-csp#devicebiometricsusebiometrics) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** |
