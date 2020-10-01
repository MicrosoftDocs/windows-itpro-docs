---
title: Enable Microsoft Defender ATP Insider Device
description: Install and use Microsoft Defender ATP for Mac.
keywords: microsoft, defender, atp, mac, installation, deploy, uninstallation, intune, jamf, macos, catalina, mojave, high sierra
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
---

# Enable Microsoft Defender ATP Insider Device

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


Endpoint detection and response capabilities in Microsoft Defender ATP for Mac are now in preview. To get these and other preview features, you must set up your Mac device to be an "Insider" device as described in this article. For scale deployment, we recommend using [Jamf](#enable-the-insider-program-with-jamf) or [Intune](#enable-the-insider-program-with-intune).

>[!IMPORTANT]
>Make sure you have enabled [Microsoft Defender ATP for Mac](microsoft-defender-atp-mac.md#how-to-install-microsoft-defender-atp-for-mac), and pay attention to the “earlyPreview” flag. See documentation for [Jamf](mac-install-with-jamf.md), [Intune](mac-install-with-intune.md) and [manual deployment](mac-install-manually.md) instructions.

## Enable the Insider program with Jamf

a. Create configuration profile com.microsoft.wdav.plist with the following content:

```XML
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
        <key>edr</key>
        <dict>
            <key>earlyPreview</key>
            <true/>
        </dict>
    </dict>
    </plist>
```

b. From the JAMF console, navigate to  **Computers > Configuration Profiles**, navigate to the configuration profile you'd like to use, then select  **Custom Settings**.

c. Create an entry with com.microsoft.wdav as the preference domain and upload the .plist created earlier.

>[!WARNING]
>You must enter the correct preference domain (com.microsoft.wdav), otherwise the preferences will not be recognized by the product

## Enable the Insider program with Intune

a. Create configuration profile com.microsoft.wdav.plist with the following content:

 ```XML
    <?xml version="1.0" encoding="utf-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1">
        <dict>
            <key>PayloadUUID</key>
            <string>C4E6A782-0C8D-44AB-A025-EB893987A295</string>
            <key>PayloadType</key>
            <string>Configuration</string>
            <key>PayloadOrganization</key>
            <string>Microsoft</string>
            <key>PayloadIdentifier</key>
            <string>com.microsoft.wdav</string>
            <key>PayloadDisplayName</key>
            <string>Microsoft Defender ATP settings</string>
            <key>PayloadDescription</key>
            <string>Microsoft Defender ATP configuration settings</string>
            <key>PayloadVersion</key>
            <integer>1</integer>
            <key>PayloadEnabled</key>
            <true/>
            <key>PayloadRemovalDisallowed</key>
            <true/>
            <key>PayloadScope</key>
            <string>System</string>
            <key>PayloadContent</key>
            <array>
                <dict>
                    <key>PayloadUUID</key>
                    <string>99DBC2BC-3B3A-46A2-A413-C8F9BB9A7295</string>
                    <key>PayloadType</key>
                    <string>com.microsoft.wdav</string>
                    <key>PayloadOrganization</key>
                    <string>Microsoft</string>
                    <key>PayloadIdentifier</key>
                    <string>com.microsoft.wdav</string>
                    <key>PayloadDisplayName</key>
                    <string>Microsoft Defender ATP configuration settings</string>
                    <key>PayloadDescription</key>
                    <string/>
                    <key>PayloadVersion</key>
                    <integer>1</integer>
                    <key>PayloadEnabled</key>
                    <true/>
                    <key>edr</key>
                    <dict>
                        <key>earlyPreview</key>
                        <true/>
                    </dict>
                </dict>
            </array>
        </dict>
    </plist>
```

b. Open  **Manage > Device configuration**. Select  **Manage > Profiles > Create Profile**.

c. Choose a name for the profile. Change  **Platform=macOS**  to  **Profile type=Custom**. Select  **Configure**.

d. Save the .plist created earlier as com.microsoft.wdav.xml.

e. Enter com.microsoft.wdav as the custom configuration profile name.

f. Open the configuration profile and upload com.microsoft.wdav.xml. This file was created in step 1.

g. Select  **OK**.

h. Select  **Manage > Assignments**. In the  **Include**  tab, select  **Assign to All Users & All devices**.

>[!WARNING]
>You must enter the correct custom configuration profile name, otherwise these preferences will not be recognized by the product.

## Enable the Insider program manually on a single device

In terminal, run:

```bash
    mdatp --edr --early-preview true
 ```

For versions earlier than 100.78.0, run:

```bash
    mdatp --edr --earlyPreview true
```

## Troubleshooting

### Verify you are running the correct version

To get the latest version of the Microsoft Defender ATP for Mac, set the Microsoft AutoUpdate to “Fast Ring”. To get “Microsoft AutoUpdate”, download it from [Release history for Microsoft AutoUpdate (MAU)](https://docs.microsoft.com/officeupdates/release-history-microsoft-autoupdate).

To verify you are running the correct version, run ‘mdatp --health’ on the device.

* The required version is 100.72.15 or later.
* If the version is not as expected, verify that Microsoft Auto Update is set to automatically download and install updates by running ‘defaults read com.microsoft.autoupdate2’ from terminal.
* To change update settings use documentation in [Update Office for Mac automatically](https://support.office.com/article/update-office-for-mac-automatically-bfd1e497-c24d-4754-92ab-910a4074d7c1).
* If you are not using Office for Mac, download and run the AutoUpdate tool.

### A device still does not appear on Microsoft Defender Security Center

After a successful deployment and onboarding of the correct version, check that the device has connectivity to the cloud service by running ‘mdatp --connectivity-test’.

* Check that you enabled the early preview flag. In terminal run “mdatp –health” and look for the value of “edrEarlyPreviewEnabled”. It should be “Enabled”.

If you followed the manual deployment instructions, you were prompted to enable Kernel Extensions. Pay attention to the “System Extension note” in the [manual deployment documentation](mac-install-manually.md#application-installation) and use the “Manual Deployment” section in the [troubleshoot kernel extension documentation](mac-support-kext.md#manual-deployment).
