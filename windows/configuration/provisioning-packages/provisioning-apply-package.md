---
title: Apply a provisioning package (Windows 10/11)
description: Provisioning packages can be applied to a device during the first-run experience (OOBE) and after ("runtime").
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.author: greglin
ms.topic: article
ms.localizationpriority: medium
ms.reviewer: gkomatsu
manager: dansimp
---

# Apply a provisioning package on Windows 10/11


**Applies to**

-   Windows 10
-   Windows 11

Provisioning packages can be applied to client devices during the first-run experience (out-of-box experience or "OOBE") and after ("runtime").

>[!NOTE]
>
> - Applying a provisioning package to a desktop device requires administrator privileges on the device.
> - You can interrupt a long-running provisioning process by pressing ESC.

## During initial setup, from a USB drive

1. Start with a computer on the first-run setup screen. If the PC has gone past this screen, reset the PC to start over. To reset the PC, go to **Settings** > **Update & security** > **Recovery** > **Reset this PC**.

    ![The first screen to set up a new PC.](../images/oobe.jpg)

2. Insert the USB drive. Windows Setup will recognize the drive and ask if you want to set up the device. Select **Set up**.

    ![Set up device?](../images/setupmsg.jpg)

3. The next screen asks you to select a provisioning source. Select **Removable Media** and select **Next**.

    ![Provision this device.](../images/prov.jpg)
    
4. Select the provisioning package (`.ppkg`) that you want to apply, and select **Next**.

    ![Choose a package.](../images/choose-package.png)

5. Select **Yes, add it**.

    ![Do you trust this package?](../images/trust-package.png)

## After setup, from a USB drive, network folder, or SharePoint site

Insert the USB drive to a desktop computer, navigate to **Settings** > **Accounts** > **Access work or school** > **Add or remove a provisioning package** > **Add a package**, and select the package to install. For a provisioning package stored on a network folder or on a SharePoint site, navigate to the provisioning package and double-click it to begin installation.

![add a package option.](../images/package.png)

## Related articles

- [Provisioning packages for Windows client](provisioning-packages.md)
- [How provisioning works in Windows client](provisioning-how-it-works.md)
- [Install Windows Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [PowerShell cmdlets for provisioning Windows client (reference)](provisioning-powershell.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)
