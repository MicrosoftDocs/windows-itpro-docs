---
title: Microsoft Defender ATP for Mac
ms.reviewer: 
description: Learn how to install, configure, update, and use Microsoft Defender for Endpoint for Mac.
keywords: microsoft, defender, atp, mac, installation, deploy, uninstallation, intune, jamf, macos, catalina, mojave, high sierra
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoint for Mac

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

This topic describes how to install, configure, update, and use Defender for Endpoint for Mac.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Defender for Endpoint for Mac is likely to lead to performance problems and unpredictable side effects. If non-Microsoft endpoint protection is an absolute requirement in your environment, you can still safely take advantage of MDATP for Mac EDR functionality after configuring MDATP for Mac antivirus functionality to run in [Passive mode](mac-preferences.md#enable--disable-passive-mode).

## What’s new in the latest release

[What's new in Microsoft Defender for Endpoint](whats-new-in-microsoft-defender-atp.md)

[What's new in Microsoft Defender for Endpoint for Mac](mac-whatsnew.md)

> [!TIP]
> If you have any feedback that you would like to share, submit it by opening Microsoft Defender for Endpoint for Mac on your device and navigating to **Help** > **Send feedback**.

To get the latest features, including preview capabilities (such as endpoint detection and response for your Mac devices), configure your macOS device running Microsoft Defender for Endpoint to be an "Insider" device.

## How to install Microsoft Defender for Endpoint for Mac

### Prerequisites

- A Defender for Endpoint subscription and access to the Microsoft Defender Security Center portal
- Beginner-level experience in macOS and BASH scripting
- Administrative privileges on the device (in case of manual deployment)

### Installation instructions

There are several methods and deployment tools that you can use to install and configure Defender for Endpoint for Mac.

- Third-party management tools:
    - [Microsoft Intune-based deployment](mac-install-with-intune.md)
    - [JAMF-based deployment](mac-install-with-jamf.md)
    - [Other MDM products](mac-install-with-other-mdm.md)

- Command-line tool:
    - [Manual deployment](mac-install-manually.md)

### System requirements

The three most recent major releases of macOS are supported.

> [!IMPORTANT]
> On macOS 11 (Big Sur), Microsoft Defender for Endpoint requires additional configuration profiles. If you are an existing customer upgrading from earlier versions of macOS, make sure to deploy the additional configuration profiles listed on [New configuration profiles for macOS Catalina and newer versions of macOS](mac-sysext-policies.md).

> [!IMPORTANT]
> Support for macOS 10.13 (High Sierra) will be discontinued on February 15th, 2021.

- 11 (Big Sur), 10.15 (Catalina), 10.14 (Mojave), 10.13 (High Sierra)
- Disk space: 1GB

Beta versions of macOS are not supported.

After you've enabled the service, you may need to configure your network or firewall to allow outbound connections between it and your endpoints.

### Licensing requirements

Microsoft Defender for Endpoint for Mac requires one of the following Microsoft Volume Licensing offers:

- Microsoft 365 E5 (M365 E5)
- Microsoft 365 E5 Security
- Microsoft 365 A5 (M365 A5)

> [!NOTE]
> Eligible licensed users may use Microsoft Defender for Endpoint on up to five concurrent devices.
> Microsoft Defender for Endpoint is also available for purchase from a Cloud Solution Provider (CSP). When purchased via a CSP, it does not require Microsoft Volume Licensing offers listed.

### Network connections

The following downloadable spreadsheet lists the services and their associated URLs that your network must be able to connect to. You should ensure that there are no firewall or network filtering rules that would deny access to these URLs, or you may need to create an *allow* rule specifically for them.



|**Spreadsheet of domains list**|**Description**|
|:-----|:-----|
|![Thumb image for Microsoft Defender for Endpoint URLs spreadsheet](images/mdatp-urls.png)<br/>  | Spreadsheet of specific DNS records for service locations, geographic locations, and OS. <br><br>Download the spreadsheet here: [mdatp-urls.xlsx](https://download.microsoft.com/download/8/a/5/8a51eee5-cd02-431c-9d78-a58b7f77c070/mde-urls.xlsx).

Microsoft Defender for Endpoint can discover a proxy server by using the following discovery methods:
- Proxy autoconfig (PAC)
- Web Proxy Autodiscovery Protocol (WPAD)
- Manual static proxy configuration

If a proxy or firewall is blocking anonymous traffic, make sure that anonymous traffic is permitted in the previously listed URLs.

> [!WARNING]
> Authenticated proxies are not supported. Ensure that only PAC, WPAD, or a static proxy is being used.
>
> SSL inspection and intercepting proxies are also not supported for security reasons. Configure an exception for SSL inspection and your proxy server to directly pass through data from Microsoft Defender for Endpoint for Mac to the relevant URLs without interception. Adding your interception certificate to the global store will not allow for interception.

To test that a connection is not blocked, open [https://x.cp.wd.microsoft.com/api/report](https://x.cp.wd.microsoft.com/api/report) and [https://cdn.x.cp.wd.microsoft.com/ping](https://cdn.x.cp.wd.microsoft.com/ping) in a browser.

If you prefer the command line, you can also check the connection by running the following command in Terminal:

```bash
curl -w ' %{url_effective}\n' 'https://x.cp.wd.microsoft.com/api/report' 'https://cdn.x.cp.wd.microsoft.com/ping'
```

The output from this command should be similar to the following:

 `OK https://x.cp.wd.microsoft.com/api/report`

 `OK https://cdn.x.cp.wd.microsoft.com/ping`

> [!CAUTION]
> We recommend that you keep [System Integrity Protection](https://support.apple.com/en-us/HT204899) (SIP) enabled on client devices. SIP is a built-in macOS security feature that prevents low-level tampering with the OS, and is enabled by default.

Once Microsoft Defender for Endpoint is installed, connectivity can be validated by running the following command in Terminal:
```bash
mdatp connectivity test
```

## How to update Microsoft Defender for Endpoint for Mac

Microsoft regularly publishes software updates to improve performance, security, and to deliver new features. To update Microsoft Defender for Endpoint for Mac, a program named Microsoft AutoUpdate (MAU) is used. To learn more, see [Deploy updates for Microsoft Defender for Endpoint for Mac](mac-updates.md).

## How to configure Microsoft Defender for Endpoint for Mac

Guidance for how to configure the product in enterprise environments is available in [Set preferences for Microsoft Defender for Endpoint for Mac](mac-preferences.md).

## macOS kernel and system extensions

In alignment with macOS evolution, we are preparing a Microsoft Defender for Endpoint for Mac update that leverages system extensions instead of kernel extensions. For relevant details, see [What's new in Microsoft Defender for Endpoint for Mac](mac-whatsnew.md).

## Resources

- For more information about logging, uninstalling, or other topics, see [Resources for Microsoft Defender for Endpoint for Mac](mac-resources.md).

- [Privacy for Microsoft Defender for Endpoint for Mac](mac-privacy.md).
