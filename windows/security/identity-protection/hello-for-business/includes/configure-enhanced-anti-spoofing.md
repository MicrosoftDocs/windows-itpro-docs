---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Configure enhanced anti-spoofing

This policy setting determines whether enhanced anti-spoofing is required for Windows Hello face authentication.

- If you enable this setting, Windows requires to use enhanced anti-spoofing for face authentication
    > [!IMPORTANT]
    > This disables face authentication on devices that don't support enhanced anti-spoofing.
- If you disable or don't configure this setting, Windows doesn't require enhanced anti-spoofing for face authentication

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/Biometrics/`[FacialFeaturesUseEnhancedAntiSpoofing](/windows/client-management/mdm/passportforwork-csp#devicebiometricsfacialfeaturesuseenhancedantispoofing) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** |
