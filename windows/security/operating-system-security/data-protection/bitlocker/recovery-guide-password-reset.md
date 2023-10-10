---
title: Reset recovery password
description: Learn how to recover BitLocker keys from Microsoft Entra ID and Active Directory Domain Services (AD DS).
ms.collection: 
  - highpri
  - tier1
ms.topic: how-to
ms.date: 09/29/2023
---

# Reset recovery password

It's recommended to invalidate a recovery password after it has been provided and used. The recovery password can be invalidated when it has been provided and used or for any other valid reason.

The recovery password and be invalidated and reset in two ways:

- **Use `manage-bde.exe`**: `manage-bde.exe` can be used to remove the old recovery password and add a new recovery password. The procedure identifies the command and the syntax for this method.

### Resetting a recovery password using `manage-bde.exe`

1. Remove the previous recovery password.

    ```cmd
    `manage-bde.exe` -protectors -delete C: -type RecoveryPassword
    ```

2. Add the new recovery password.

    ```cmd
    `manage-bde.exe` -protectors -add C: -RecoveryPassword
    ```

3. Get the ID of the new recovery password. From the screen, copy the ID of the recovery password.

    ```cmd
    `manage-bde.exe` -protectors -get C: -Type RecoveryPassword
    ```

4. Back up the new recovery password to AD DS.

    ```cmd
    `manage-bde.exe` -protectors -adbackup C: -id {EXAMPLE6-5507-4924-AA9E-AFB2EB003692}
    ```

    > [!WARNING]
    > The braces `{}` must be included in the ID string.
