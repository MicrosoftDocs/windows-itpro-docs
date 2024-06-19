---
title: Provision PCs with common settings
description: Create a provisioning package to apply common settings to a PC running Windows 10.
ms.topic: how-to
ms.date: 12/31/2017
---

# Provision PCs with common settings for initial deployment (desktop wizard)

This topic explains how to create and apply a provisioning package that contains common enterprise settings to a device running all desktop editions of Windows client except Home.

You can apply a provisioning package on a USB drive to off-the-shelf devices during setup, making it fast and easy to configure new devices.

## Advantages

- You can configure new devices without reimaging
- Works on desktop devices
- No network connectivity required
- Simple to apply

[Learn more about the benefits and uses of provisioning packages.](provisioning-packages.md)

## What does the desktop wizard do?

The desktop wizard helps you configure the following settings in a provisioning package:

- Set device name
- Upgrade product edition
- Configure the device for shared use
- Remove pre-installed software
- Configure Wi-Fi network
- Enroll device in Active Directory or Microsoft Entra ID
- Create local administrator account
- Add applications and certificates

>[!WARNING]
>You must run Windows Configuration Designer on Windows client to configure Microsoft Entra enrollment using any of the wizards.

Provisioning packages can include management instructions and policies, installation of specific apps, customization of network connections and policies, and more.

> [!TIP]
> Use the desktop wizard to create a package with the common settings, then switch to the advanced editor to add other settings, apps, policies, etc.
>
> :::image type="content" source="images/icd-simple-edit.png" alt-text="In the desktop wizard, open the advanced editor.":::

## Create the provisioning package

Use the Windows Configuration Designer tool to create a provisioning package. [Learn how to install Windows Configuration Designer.](provisioning-install-icd.md)

1. Open Windows Configuration Designer (by default, %windir%\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Imaging and Configuration Designer\x86\ICD.exe).

1. Click **Provision desktop devices**.

    :::image type="content" source="images/icd-create-options-1703.png" alt-text="In Windows Configuration Designer, see the ICD start options.":::

1. Name your project and click **Finish**. The pages for desktop provisioning will walk you through the following steps.

    :::image type="content" source="images/icd-desktop-1703.png" alt-text="In Windows Configuration Designer, select Finish, and see the ICD desktop provisioning.":::


> [!IMPORTANT]
> When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

## Configure settings

1. Enable device setup:

    :::image type="content" source="images/set-up-device-details-desktop.png" alt-text="In Windows Configuration Designer, enable device setup, enter the device name, the product key to upgrade, turn off shared use, and remove preinstalled software.":::

    If you want to enable device setup, select **Set up device**, and configure the following settings:

    - **Device name**: Required. Enter a unique 15-character name for the device. You can use variables to add unique characters to the name, such as `Contoso-%SERIAL%` and `Contoso-%RAND:5%`.
    - **Enter product key**: Optional. Select a license file to upgrade Windows client to a different edition. For more information, see [the permitted upgrades](/windows/deployment/upgrade/windows-10-edition-upgrades).
    - **Configure devices for shared use**: Select **Yes** or **No** to optimize the Windows client for shared use scenarios.
    - **Remove pre-installed software**: Optional. Select **Yes** if you want to remove preinstalled software.

1. Set up the network:

    :::image type="content" source="images/set-up-network-details-desktop.png" alt-text="In Windows Configuration Designer, turn on wireless connectivity, enter the network SSID, and network type.":::

    If you want to enable network setup, select **Set up network**, and configure the following settings:

    - **Set up network**: To enable wireless connectivity, select **On**.
    - **Network SSID**: Enter the Service Set IDentifier (SSID) of the network.
    - **Network type**: Select **Open** or **WPA2-Personal**. If you select **WPA2-Personal**, enter the password for the wireless network.

1. Enable account management:

    :::image type="content" source="images/account-management-details.png" alt-text="In Windows Configuration Designer, join Active Directory, Microsoft Entra ID, or create a local admin account.":::

    If you want to enable account management, select **Account Management**, and configure the following settings:

    - **Manage organization/school accounts**: Choose how devices are enrolled. Your options:
      - **Active Directory**: Enter the credentials for a least-privileged user account to join the device to the domain.
      - **Microsoft Entra ID**: Before you use a Windows Configuration Designer wizard to configure bulk Microsoft Entra enrollment, [set up Microsoft Entra join in your organization](/azure/active-directory/active-directory-azureadjoin-setup). In your Microsoft Entra tenant, the **maximum number of devices per user** setting determines how many times the bulk token in the wizard can be used.

        If you select this option, enter a friendly name for the bulk token you get using the wizard. Set an expiration date for the token. The maximum is 180 days from the date you get the token. Select **Get bulk token**. In **Let's get you signed in**, enter an account that has permissions to join a device to Microsoft Entra ID, and then the password. Select **Accept** to give Windows Configuration Designer the necessary permissions.

        You must run Windows Configuration Designer on Windows client to configure Microsoft Entra enrollment using any of the wizards.

      - **Local administrator**: If you select this option, enter a user name and password. If you create a local account in the provisioning package, you must change the password using the **Settings** app every 42 days. If the password isn't changed during that period, the account might be locked out, and unable to sign in.

1. Add applications:

    :::image type="content" source="images/add-applications-details.png" alt-text="In Windows Configuration Designer, add an application.":::

    To add applications to the devices, select **Add applications**. You can install multiple applications, including Windows desktop applications (Win32) and Universal Windows Platform (UWP) apps. The settings in this step vary depending on the application you select. For help with the settings, see [Provision PCs with apps](provision-pcs-with-apps.md).

1. Add certificates:

    :::image type="content" source="images/add-certificates-details.png" alt-text="In Windows Configuration Designer, add a certificate.":::

    To add a certificate to the devices, select **Add certificates**, and configure the following settings:

    - **Certificate name**: Enter a name for the certificate.
    - **Certificate path**: Browse and select the certificate you want to add.

1. Finish:

    :::image type="content" source="images/finish-details.png" alt-text="In Windows Configuration Designer, protect your package with a password.":::

    To complete the wizard, select **Finish**, and configure the following setting:

    - **Protect your package**: Select **Yes** or **No** to password protect your provisioning package. When you apply the provisioning package to a device, you must enter this password.

After you're done, click **Create**. It only takes a few seconds. When the package is built, the location where the package is stored is displayed as a hyperlink at the bottom of the page.

 **Next step**: [How to apply a provisioning package](provisioning-apply-package.md)
