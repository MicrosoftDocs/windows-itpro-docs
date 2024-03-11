---
author: paolomatarazzo
ms.author: paoloma
ms.date: 01/03/2024
ms.topic: include
---

### Enable ESS with supported peripherals

Enhanced Sign-in Security (ESS) adds a layer of security to biometric data by using specialized hardware and software components, for example Virtualization Based Security (VBS) and Trusted Platform Module 2.0.
With ESS, Windows Hello biometric (face and fingerprint) template data and matching operations are isolated to trusted hardware or specified memory regions, and the rest of the operating system can't access or tamper with them. Since the channel of communication between the sensors and the algorithm is also secured, it's impossible for malware to inject or replay data in order to simulate a user signing in or to lock a user out of their machine.

If you enable this policy, you can configure the following values:

- `0`: ESS is enabled with peripheral or built-in non-ESS sensors. Authentication operations of peripheral Windows Hello capable devices are allowed, subject to current feature limitations. ESS is enabled on devices with a mixture of biometric devices, such as an ESS-capable fingerprint reader and a non-ESS capable camera. Therefore, this setting is not recommended
- `1`: ESS is enabled without peripheral or built-in non-ESS sensors. Authentication operations of any peripheral biometric device are blocked and not available for Windows Hello. This setting is recommended for highest security

If you disable or not configure this setting, then non-ESS sensors are blocked on the ESS device.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/PassportForWork/Biometrics/`[EnableESSwithSupportedPeripherals](/windows/client-management/mdm/passportforwork-csp#devicebiometricsenableesswithsupportedperipherals) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** |

For more information, see [How does Enhanced Sign-in Security protect biometric data](/windows-hardware/design/device-experiences/windows-hello-enhanced-sign-in-security#how-does-enhanced-sign-in-security-protect-biometric-data).
