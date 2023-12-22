---
author: paolomatarazzo
ms.author: paoloma
ms.date: 12/19/2023
ms.topic: include
---

### Allow enumeration of emulated smart card for all users

Windows prevents users on the same device from enumerating provisioned Windows Hello for Business credentials for other users. If you enable this policy setting, Windows allows all users of the device to enumerate all Windows Hello for Business credentials, but still require each user to provide their own factors for authentication. If you disable or don't configure this policy setting, Windows doesn't allow the enumeration of provisioned Windows Hello for Business credentials for other users on the same device.

This policy setting is designed for a single user who enrolls *privileged* and *nonprivileged* accounts on a single device. The user owns both credentials, which enable them to sign-in using nonprivileged credentials, but can perform elevated tasks without signing-out. This policy setting is incompatible with Windows Hello for Business credentials provisioned when the *Turn off smart card emulation* policy setting is enabled.

|  | Path |
|--|--|
| **CSP** |  Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business** |
