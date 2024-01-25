---
title: Set up digital signs on Windows
description: A single-use device such as a digital sign is easy to set up in Windows 10 and Windows 11 (Pro, Enterprise, and Education).
ms.date: 09/20/2021
ms.topic: article
---

# Set up digital signs

Digital signage can be a useful and exciting business tool. Use digital signs to showcase your products and services, to display testimonials, or to advertise promotions and campaigns. A digital sign can be a static display, such as a building directory or menu, or it can be dynamic, such as repeating videos or a social media feed.

For digital signage, simply select a digital sign player as your kiosk app. You can also use [Microsoft Edge in kiosk mode](/microsoft-edge/deploy/microsoft-edge-kiosk-mode-deploy) or the Kiosk Browser app, and configure it to show your online content.

>[!TIP]
>Kiosk Browser can also be used in [single-app kiosks](kiosk-single-app.md) and [multi-app kiosk](lock-down-windows-10-to-specific-apps.md) as a web browser. For more information, see [Guidelines for web browsers](guidelines-for-assigned-access-app.md#guidelines-for-web-browsers).

Kiosk Browser must be downloaded for offline licensing using Microsoft Store for Business. You can deploy Kiosk Browser to devices running Windows 11, and Windows 10 version 1803+.

>[!NOTE]
>If you haven't set up your Microsoft Store for Business yet, check out [the prerequisites](/microsoft-store/prerequisites-microsoft-store-for-business) and then [sign up](/microsoft-store/sign-up-microsoft-store-for-business).

This procedure explains how to configure digital signage using Kiosk Browser on a device running Windows client that has already been set up (completed the first-run experience).

1. [Get **Kiosk Browser** in Microsoft Store for Business with offline, unencoded license type.](/microsoft-store/acquire-apps-microsoft-store-for-business#acquire-apps)
1. [Download the **Kiosk Browser** package, license file, and all required frameworks.](/microsoft-store/distribute-offline-apps#download-an-offline-licensed-app)
1. [Install Windows Configuration Designer.](~/provisioning-packages/provisioning-install-icd.md)
1. Open Windows Configuration Designer and select **Provision kiosk devices**.
1. Enter a friendly name for the project, and select **Finish**.
1. On **Set up device**, select **Disabled**, and select **Next**.
1. On **Set up network**, enable network setup:
    - Toggle **On** wireless network connectivity.
    - Enter the SSID, the network type (**Open** or **WPA2-Personal**), and (if **WPA2-Personal**) the password for the wireless network.
1. On **Account management**, select **Disabled**, and select **Next**.
1. On **Add applications**, select **Add an application**:
    - For **Application name**, enter `Kiosk Browser`.
    - For **Installer path**, browse to and select the AppxBundle that you downloaded from Microsoft Store for Business. After you select the package, additional fields are displayed.
    - For **License file path**, browse to and select the XML license file that you downloaded from Microsoft Store for Business.
    - The **Package family name** is populated automatically.
    - Select **Next**.
1. On **Add certificates**, select **Next**.
1. On **Configure kiosk account and app**, toggle **Yes** to create a local user account for your digital signage:
    - Enter a user name and password, and toggle **Auto sign-in** to **Yes**.
    - Under **Configure the kiosk mode app**, enter the user name for the account that you're creating.
    - For **App type**, select **Universal Windows App**.
    - In **Enter the AUMID for the app**, enter `Microsoft.KioskBrowser_8wekyb3d8bbwe!App`.
1. In the bottom left corner of Windows Configuration Designer, select **Switch to advanced editor**.
1. Go to **Runtime settings** > **Policies** > **KioskBrowser**. Let's assume that the URL for your digital signage content is contoso.com/menu:
    - In **BlockedUrlExceptions**, enter `https://www.contoso.com/menu`.
    - In **BlockedUrl**, enter `*`.
    - In **DefaultUrl**, enter `https://www.contoso.com/menu`.
    - Set **EnableEndSessionButton**, **EnableHomeButton**, and **EnableNavigationButtons** to **No**.

    >[!TIP]
    >For more information on kiosk browser settings, see [Guidelines for web browsers](guidelines-for-assigned-access-app.md#guidelines-for-web-browsers).

1. On the **File** menu, select **Save**, and select **OK** in the **Keep your info secure** dialog box.
1. On the **Export** menu, select **Provisioning package**.
1. Change the **Owner** to **IT Admin**, and select **Next**.
1. On **Select security details for the provisioning package**, select **Next**.
1. On **Select where to save the provisioning package**, select **Next**.
1. On **Build the provisioning package**, select **Build**.
1. On the **All done!** screen, click the **Output location**.
1. Copy the .ppkg file to a USB drive.
1. Attach the USB drive to the device that you want to use for your digital sign.
1. Go to **Settings** > **Accounts** > **Access work or school** > **Add or remove a provisioning package** > **Add a package**, and select the package on the USB drive.
