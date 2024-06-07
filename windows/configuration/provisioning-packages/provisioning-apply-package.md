---
title: Apply a provisioning package
description: Provisioning packages can be applied to a device during initial setup (OOBE) and after (runtime).
ms.topic: how-to
ms.date: 12/31/2017
---

# Apply a provisioning package

Provisioning packages can be applied to a device during initial setup (out-of-box experience or "OOBE") and after ("runtime").

> [!NOTE]
>
> - Applying a provisioning package to a desktop device requires administrator privileges on the device.
> - You can interrupt a long-running provisioning process by pressing ESC.

> [!TIP]
> In addition to the following methods, you can use the PowerShell cmdlet [Install-ProvisioningPackage](/powershell/module/provisioning/Install-ProvisioningPackage) with `-LogsDirectoryPath` to get logs for the operation.

## During initial setup

To apply a provisioning package from a USB drive during initial setup:

1. Start with a device on the initial setup screen. If the device has gone past this screen, reset the device to start over. To reset, go to **Settings** > **System** > [**Recovery**](ms-settings:recovery) > **Reset this PC**.

   :::image type="content" source="images/oobe.png" alt-text="The first screen when setting up a new PC.":::

1. Insert the USB drive. If nothing happens when you insert the USB drive, press the Windows key five times.

   - If there's only one provisioning package on the USB drive, the provisioning package is applied. See step 5.
   - If there's more than one provisioning package on the USB drive, Windows setup recognizes the drive and ask how you want to provision the device. Select **Install provisioning package** and select **Next**.

   :::image type="content" source="images/provisioning-oobe-choice.png" alt-text="What would you like to do?":::

1. Select the provisioning package (`.ppkg`) that you want to apply, and select **Yes**.

    :::image type="content" source="images/provisioning-oobe-choose-package.png" alt-text="Choose a package.":::

1. The selected provisioning package will install and apply to the device.

   :::image type="content" source="images/provisioning-oobe-installing.png" alt-text="Setting up your PC.":::

1. Wait for the device to load and begin applying the provisioning package. Once you see "You can remove your removable media now!" you can remove your USB drive. Windows will continue provisioning the device.

## After initial setup

Provisioning packages can be applied after initial setup through Windows settings or by double-clicking a provisioning package.

### Windows Settings

1. Insert the USB drive, then navigate to **Settings** > **Accounts** > [**Access work or school**](ms-settings:workplace) > **Add or remove a provisioning package** > **Add a package**.

   :::image type="content" source="images/provisioning-runtime-manage-packages.png" alt-text="Add or remove a provisioning package.":::

1. Choose the method you want to use, such as **Removable Media**.

   :::image type="content" source="images/provisioning-runtime-choose-package.png" alt-text="Choose a method.":::

1. Select the provisioning package (`.ppkg`) that you want to apply, and select **Add**.

   :::image type="content" source="images/provisioning-runtime-add-package.png" alt-text="Select and add a package.":::

1. Provisioning packages require administrator privileges as they can modify system policies and run scripts at the system level. Ensure you trust the package you're installing before accepting the UAC prompt. Select **Yes**.

   :::image type="content" source="images/provisioning-runtime-UAC.png" alt-text="Do you want to allow changes to your device?":::

1. The provisioning runtime asks if the package is from a source you trust. Verify that you're applying the correct package and that it's trusted. Select **Yes, add it**.

   :::image type="content" source="images/provisioning-runtime-trust.png" alt-text="Do you trust this package?":::

### Apply Directly

To apply a provisioning package directly, such as from a USB drive, folder, network, or SharePoint site:

1. Navigate to the provisioning package and double-click it to begin the installation.

   :::image type="content" source="images/provisioning-runtime-click-to-install.png" alt-text="Double-click package to being installation.":::

1. Provisioning packages require administrator privileges as they can modify system policies and run scripts at the system level. Ensure you trust the package you're installing before accepting the UAC prompt. Select **Yes**.

   :::image type="content" source="images/provisioning-runtime-UAC.png" alt-text="Do you want to allow changes to your device?":::

1. The provisioning runtime asks if the package is from a source you trust. Verify that you're applying the correct package and that it's trusted. Select **Yes, add it**.

   :::image type="content" source="images/provisioning-runtime-trust.png" alt-text="Do you trust this package?":::

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
