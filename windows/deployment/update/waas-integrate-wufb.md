---
title: Integrate Windows Update for Business
description: Use Windows Update for Business deployments with management tools such as Windows Server Update Services (WSUS) and Microsoft Configuration Manager.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 02/14/2024
---

# Integrate Windows Update for Business with management solutions

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

You can integrate Windows Update for Business deployments with existing management tools such as Windows Server Update Services (WSUS) and Microsoft Configuration Manager.

## Integrate Windows Update for Business with Windows Server Update Services


For Windows 10, version 1607 and later, devices can be configured to receive updates from both Windows Update (or Microsoft Update) and Windows Server Update Services (WSUS).  In a joint WSUS and Windows Update for Business setup:

- Devices receive their Windows content from Microsoft and defer these updates according to Windows Update for Business policy
- All other content synced from WSUS will be directly applied to the device; that is, updates to products other than Windows won't follow your Windows Update for Business deferral policies

### Configuration example \#1: Deferring Windows Update updates with other update content hosted on WSUS

**Configuration:**

- Device is configured to defer Windows quality updates using Windows Update for Business
- Device is also configured to be managed by WSUS
- Device isn't configured to enable Microsoft Update (**Update/AllowMUUpdateService** = not enabled)
- Admin has opted to put updates to Office and other products on WSUS
- Admin has also put third-party drivers on WSUS

|Content|Metadata source|Payload source|Deferred?|
|--- |--- |--- |--- |
|Updates to Windows|Windows Update|Windows Update|Yes|
|Updates to Office and other products|WSUS|WSUS|No|
|Third-party drivers|WSUS|WSUS|No|

![diagram of content flow](images/wufb-config1a.png)

### Configuration example \#2: Excluding drivers from Windows quality updates using Windows Update for Business 

**Configuration:**

- Device is configured to defer Windows quality updates and to exclude drivers from Windows Update quality updates (**ExcludeWUDriversInQualityUpdate** = enabled)
- Device is also configured to be managed by WSUS
- Admin has opted to put Windows Update drivers on WSUS

|Content|Metadata source|Payload source|Deferred?|
|--- |--- |--- |--- |
|Updates to Windows (excluding drivers)|Windows Update|Windows Update|Yes|
|Updates to Office and other products|WSUS|WSUS|No|
|Drivers|WSUS|WSUS|No|

![diagram of content flow 2](images/wufb-config2.png)

### Configuration example \#3: Device configured to receive Microsoft updates 

**Configuration:**

- Device is configured to defer quality updates using Windows Update for Business and to be managed by WSUS
- Device is configured to **receive updates for other Microsoft products** along with updates to Windows (**Update/AllowMUUpdateService** = enabled)
   - For a list of other Microsoft products that might be updated, see [Update other Microsoft products](update-other-microsoft-products.md).
- Admin has also placed Microsoft Update, non-Microsoft, and locally published update content on the WSUS server

In this example, the deferral behavior for updates to Office and other non-Windows products is slightly different than if WSUS weren't enabled. 
- In a non-WSUS case, these updates would be deferred just as any update to Windows would be.  
- However, with WSUS also configured, these updates are sourced from Microsoft but deferral policies aren't applied.  

|Content|Metadata source|Payload source|Deferred?|
|--- |--- |--- |--- |
|Updates to Windows (excluding drivers)|Microsoft Update|Microsoft Update|Yes|
|Updates to Office and other products|Microsoft Update|Microsoft Update|No|
|Drivers, third-party applications|WSUS|WSUS|No|

![diagram of content flow 3](images/wufb-config3a.png)

>[!NOTE]
> Because the admin enabled **Update/AllowMUUpdateService**, placing the content on WSUS was not needed for the particular device, as the device will always receive Microsoft Update content from Microsoft when configured in this manner.

## Integrate Windows Update for Business with Microsoft Configuration Manager

For Windows 10, version 1607, organizations already managing their systems with a Configuration Manager solution can also have their devices configured for Windows Update for Business (that is, setting deferral policies on those devices). Such devices are visible in the Configuration Manager console, however they appear with a detection state of **Unknown**.

:::image type="content" alt-text="Example of unknown devices." source="images/wufb-sccm.png" lightbox="images/wufb-sccm.png":::

For more information, see [Integration with Windows Update for Business in Windows 10](/mem/configmgr/sum/deploy-use/integrate-windows-update-for-business-windows-10).

