---
title: Set up and use Windows Defender SmartScreen on individual devices (Windows 10)
description: Learn how employees can use Windows Security to set up Windows Defender SmartScreen. Windows Defender SmartScreen protects users from running malicious apps.
keywords: SmartScreen Filter, Windows SmartScreen, Windows Defender SmartScreen
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.localizationpriority: medium
ms.date: 10/13/2017
ms.reviewer: 
manager: dansimp
ms.author: macapara
---

# Set up and use Windows Defender SmartScreen on individual devices

**Applies to:**
- Windows 10, version 1703
- Windows 10 Mobile
- Microsoft Edge

Windows Defender SmartScreen helps to protect users if they try to visit sites previously reported as phishing or malware websites, or if a user tries to download potentially malicious files.

## How users can use Windows Security to set up Windows Defender SmartScreen
Starting with Windows 10, version 1703, users can use Windows Security to set up Windows Defender SmartScreen for an individual device; unless and administrator has used Group Policy or Microsoft Intune to prevent it.

>[!NOTE]
>If any of the following settings are managed through Group Policy or mobile device management (MDM) settings, it appears as unavailable to the employee.

**To use Windows Security to set up Windows Defender SmartScreen on a device**
1. Open the Windows Security app, and then select **App & browser control** > **Reputation-based protection settings**.

2. In the **Reputation-based protection** screen, choose from the following options:

   - In the **Check apps and files** area:

       - **On.** Warns users that the apps and files being downloaded from the web are potentially dangerous but allows the action to continue.

       - **Off.** Turns off Windows Defender SmartScreen, so a user isn't alerted or stopped from downloading potentially malicious apps and files.

   - In the **Windows Defender SmartScreen for Microsoft Edge** area:
        
       - **On.** Warns users that sites and downloads are potentially dangerous but allows the action to continue while running in Microsoft Edge.
        
       - **Off.** Turns off Windows Defender SmartScreen, so a user isn't alerted or stopped from downloading potentially malicious apps and files.
   - In the **Potentially unwanted app blocking** area:

      - **On.** Turns on both the 'Block apps' and 'Block downloads settings. To learn more, see [How Microsoft identifies malware and potentially unwanted applications](https://docs.microsoft.com/windows/security/threat-protection/intelligence/criteria#potentially-unwanted-application-pua).
          - **Block apps.** This setting will prevent new apps from installing on the device and warn users of apps that are existing on the device.

          - **Block downloads.** This setting will alert users and stop the downloads of apps in the Microsoft Edge browser (based on Chromium).

      - **Off.** Turns off Potentially unwanted app blocking, so a user isn't alerted or stopped from downloading or installing potentially unwanted apps.

   - In the **Windows Defender SmartScreen from Microsoft Store apps** area:
        
     - **On.** Warns users that the sites and downloads used by Microsoft Store apps are potentially dangerous but allows the action to continue.
        
     - **Off.** Turns off Windows Defender SmartScreen, so a user isn't alerted or stopped from visiting sites or from downloading potentially malicious apps and files.

       ![Windows Security, Windows Defender SmartScreen controls](images/windows-defender-smartscreen-control-2020.png)

## How Windows Defender SmartScreen works when a user tries to run an app
Windows Defender SmartScreen checks the reputation of any web-based app the first time it's run from the Internet, checking digital signatures and other factors against a Microsoft-maintained service. If an app has no reputation or is known to be malicious, Windows Defender SmartScreen can warn the user or block the app from running entirely, depending on how you've configured the feature to run in your organization.

By default, users can bypass Windows Defender SmartScreen protection, letting them run legitimate apps after accepting a warning message prompt. You can also use Group Policy or Microsoft Intune to block your employees from using unrecognized apps, or to entirely turn off Windows Defender SmartScreen (not recommended).

## How users can report websites as safe or unsafe
Windows Defender SmartScreen can be configured to warn users from going to a potentially dangerous site. Users can then choose to report a website as safe from the warning message or as unsafe from within Microsoft Edge and Internet Explorer 11.

**To report a website as safe from the warning message**
- On the warning screen for the site, click **More Information**, and then click **Report that this site does not contain threats**. The site info is sent to the Microsoft feedback site, which provides further instructions.

**To report a website as unsafe from Microsoft Edge**
- If a site seems potentially dangerous, users can report it to Microsoft by clicking **More (...)**, clicking **Send feedback**, and then clicking **Report unsafe site**.

**To report a website as unsafe from Internet Explorer 11**
- If a site seems potentially dangerous, users can report it to Microsoft by clicking on the **Tools** menu, clicking **Windows Defender SmartScreen**, and then clicking **Report unsafe website**.

## Related topics
- [Threat protection](../index.md)

- [Windows Defender SmartScreen overview](windows-defender-smartscreen-overview.md)

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to TechNet content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
