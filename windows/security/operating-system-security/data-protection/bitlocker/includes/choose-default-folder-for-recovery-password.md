---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Choose default folder for recovery password

Specify the default path that is displayed when the *BitLocker Drive Encryption setup wizard* prompts the user to enter the location of a folder in which to save the recovery password. You can specify either a fully qualified path or include the target computer's environment variables in the path:

- If the path isn't valid, the BitLocker setup wizard displays the computer's top-level folder view
- If you disable or don't configure this policy setting, the BitLocker setup wizard displays the computer's top-level folder view when the user chooses the option to save the recovery password in a folder

> [!NOTE]
> This policy setting does not prevent the user from saving the recovery password in another folder.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |