---
title: Microsoft Defender ATP for Mac
ms.reviewer:
description: Describes how to install and use Microsoft Defender ATP for Mac.
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

# Microsoft Defender Advanced Threat Protection for Mac

This topic describes how to install, configure, update, and use Microsoft Defender ATP for Mac.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Microsoft Defender ATP for Mac is likely to lead to performance problems and unpredictable side effects.

## What’s new in the latest release

[What's new](microsoft-defender-atp-mac-whatsnew.md)

If you have any feedback that you would like to share, submit it by opening Microsoft Defender ATP for Mac on your device and navigating to **Help** > **Send feedback**.

## How to install Microsoft Defender ATP for Mac

### Prerequisites

- Access to the Microsoft Defender Security Center portal
- Beginner-level experience in macOS and BASH scripting
- Administrative privileges on the device (in case of manual deployment)

### System requirements

> [!CAUTION]
> The three most recent major releases of macOS are supported. Beta versions of macOS are not supported.
>
> macOS Sierra (10.12) support will end on January 1, 2020.

- Supported macOS versions: 10.15 (Catalina), 10.14 (Mojave), 10.13 (High Sierra)
- Disk space: 650 MB

After you've enabled the service, you may need to configure your network or firewall to allow outbound connections between it and your endpoints.

The following table lists the services and their associated URLs that your network must be able to connect to. You should ensure that there are no firewall or network filtering rules that would deny access to these URLs, or you may need to create an *allow* rule specifically for them.

| Service location                         | DNS record              |
| ---------------------------------------- | ----------------------- |
| Common URLs for all locations            |  x.cp.wd.microsoft.com <br/> cdn.x.cp.wd.microsoft.com <br/> eu-cdn.x.cp.wd.microsoft.com <br/> wu-cdn.x.cp.wd.microsoft.com <br/> *.blob.core.windows.net <br/> officecdn-microsoft-com.akamaized.net <br/> crl.microsoft.com <br/>  events.data.microsoft.com |
| European Union                           | europe.x.cp.wd.microsoft.com <br/> eu-v20.events.data.microsoft.com |
| United Kingdom                           | unitedkingdom.x.cp.wd.microsoft.com <br/> uk-v20.events.data.microsoft.com |
| United States                            | unitedstates.x.cp.wd.microsoft.com  <br/> us-v20.events.data.microsoft.com |

Microsoft Defender ATP can discover a proxy server by using the following discovery methods:
- Web Proxy Auto-discovery Protocol (WPAD)
- Manual static proxy configuration

If a proxy or firewall is blocking anonymous traffic, make sure that anonymous traffic is permitted in the previously listed URLs.

To test that a connection is not blocked, open [https://x.cp.wd.microsoft.com/api/report](https://x.cp.wd.microsoft.com/api/report) and [https://cdn.x.cp.wd.microsoft.com/ping](https://cdn.x.cp.wd.microsoft.com/ping) in a browser.

If you prefer the command line, you can also check the connection by running the following command in Terminal:

```bash
$ curl -w ' %{url_effective}\n' 'https://x.cp.wd.microsoft.com/api/report' 'https://cdn.x.cp.wd.microsoft.com/ping'
```

The output from this command should be similar to the following:

> `OK https://x.cp.wd.microsoft.com/api/report`
>
> `OK https://cdn.x.cp.wd.microsoft.com/ping`

> [!CAUTION]
> We recommend that you keep [System Integrity Protection](https://support.apple.com/en-us/HT204899) (SIP) enabled on client machines. SIP is a built-in macOS security feature that prevents low-level tampering with the OS, and is enabled by default.

Once Microsoft Defender ATP is installed, connectivity can be validated by running the following command in Terminal:
```bash
$ mdatp --connectivity-test
```

### Installation instructions

There are several methods and deployment tools that you can use to install and configure Microsoft Defender ATP for Mac.

In general you need to take the following steps:

- Ensure that you have a Microsoft Defender ATP subscription and have access to the Microsoft Defender ATP Portal
- Deploy Microsoft Defender ATP for Mac using one of the following deployment methods:
  - Via third-party management tools:
    - [Microsoft Intune-based deployment](microsoft-defender-atp-mac-install-with-intune.md)
    - [JAMF-based deployment](microsoft-defender-atp-mac-install-with-jamf.md)
    - [Other MDM products](microsoft-defender-atp-mac-install-with-other-mdm.md)
  - Via the command-line tool:
    - [Manual deployment](microsoft-defender-atp-mac-install-manually.md)

## How to enable EDR preview

If you are an EDR private \ public preview customer, you can enable your machine to receive EDR preview features.
Currently this flag enables \ disables the entire EDR functionality.
- Intune-based enable
  - Create configuration profile com.microsoft.wdav.plist with the following content: 
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
    For more info, refer to [Microsoft Intune-based deployment](microsoft-defender-atp-mac-install-with-intune.md)
- JAMF-based enable
  - Create configuration profile com.microsoft.wdav.plist with the following content: 
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
    For more info, refer to [JAMF-based deployment](microsoft-defender-atp-mac-install-with-jamf.md)
- Manual enable
  - In command prompt, run
    ```bash
    $ mdatp --early-preview true
    ```
    For more info, refer to [Set preferences for Microsoft Defender ATP for Mac](microsoft-defender-atp-mac-preferences.md)

To test if EDR is enabled and functioning properly on a machine, visit machine details. Timeline tab should contain events.
- If timeline shows no events, please make sure System Extension were approved for machine.
- If you are on Catalina and seeing no file events, make sure Full Disk Access was allowed.
For more info, refer to deployment instructions:
    - [Microsoft Intune-based deployment](microsoft-defender-atp-mac-install-with-intune.md)
    - [JAMF-based deployment](microsoft-defender-atp-mac-install-with-jamf.md)
    - [Other MDM products](microsoft-defender-atp-mac-install-with-other-mdm.md)
  - Via the command-line tool:
    - [Manual deployment](microsoft-defender-atp-mac-install-manually.md)

## How to update Microsoft Defender ATP for Mac

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features. To update Microsoft Defender ATP for Mac, a program named Microsoft AutoUpdate (MAU) is used.

To read more on how to configure MAU in enterprise environments, refer to [Deploy updates for Microsoft Defender ATP for Mac](microsoft-defender-atp-mac-updates.md)

## How to configure Microsoft Defender ATP for Mac

Guidance for how to configure the product in enterprise environments is available in [Set preferences for Microsoft Defender ATP for Mac](microsoft-defender-atp-mac-preferences.md).

## Resources

- For more information about logging, uninstalling, or other topics, see the [Resources](microsoft-defender-atp-mac-resources.md) page.

- [Privacy for Microsoft Defender ATP for Mac](microsoft-defender-atp-mac-privacy.md)
