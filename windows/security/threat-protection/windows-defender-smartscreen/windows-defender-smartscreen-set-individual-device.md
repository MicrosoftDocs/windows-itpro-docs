---
title: Set up and use Windows Defender SmartScreen on individual devices (Windows 10)
description: Steps about what happens when an employee tries to run an app, how employees can report websites as safe or unsafe, and how employees can use the Windows Security to set Windows Defender SmartScreen for individual devices.
keywords: SmartScreen Filter, Windows SmartScreen
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

Windows Defender SmartScreen helps to protect your employees if they try to visit sites previously reported as phishing or malware websites, or if an employee tries to download potentially malicious files.

## How employees can use Windows Security to set up Windows Defender SmartScreen
Starting with Windows 10, version 1703 your employees can use Windows Security to set up Windows Defender SmartScreen for an individual device; unless you've used Group Policy or Microsoft Intune to prevent it.

>[!NOTE]
>If any of the following settings are managed through Group Policy or mobile device management (MDM) settings, it appears as unavailable to the employee.

**To use Windows Security to set up Windows Defender SmartScreen on a device**
1. Open the Windows Security app, and then click **App & browser control**.

2. In the **App & browser control** screen, choose from the following options:

   - In the **Check apps and files** area:
    
       - **Block.** Stops employees from downloading and running unrecognized apps and files from the web.

       - **Warn.** Warns employees that the apps and files being downloaded from the web are potentially dangerous, but allows the action to continue.

       - **Off.** Turns off SmartScreen, so an employee isn't alerted or stopped from downloading potentially malicious apps and files.

   - In the **SmartScreen for Microsoft Edge** area:
    
       - **Block.** Stops employees from downloading and running unrecognized apps and files from the web, while using Microsoft Edge.
        
       - **Warn.** Warns employees that sites and downloads are potentially dangerous, but allows the action to continue while running in Microsoft Edge.
        
       - **Off.** Turns off SmartScreen, so an employee isn't alerted or stopped from downloading potentially malicious apps and files.    

   - In the **SmartScreen from Microsoft Store apps** area:
        
     - **Warn.** Warns employees that the sites and downloads used by Microsoft Store apps are potentially dangerous, but allows the action to continue.
        
     - **Off.** Turns off SmartScreen, so an employee isn't alerted or stopped from visiting sites or from downloading potentially malicious apps and files.

       ![Windows Security, SmartScreen controls](images/windows-defender-smartscreen-control.png)

## How SmartScreen works when an employee tries to run an app
Windows Defender SmartScreen checks the reputation of any web-based app the first time it's run from the Internet, checking digital signatures and other factors against a Microsoft-maintained service. If an app has no reputation or is known to be malicious, SmartScreen can warn the employee or block the app from running entirely, depending on how you've configured the feature to run in your organization.

By default, your employees can bypass SmartScreen protection, letting them run legitimate apps after accepting a warning message prompt. You can also use Group Policy or Microsoft Intune to block employees from using unrecognized apps, or to entirely turn off Windows Defender SmartScreen (not recommended).

## How employees can report websites as safe or unsafe
You can configure Windows Defender SmartScreen to warn employees from going to a potentially dangerous site. Employees can then choose to report a website as safe from the warning message or as unsafe from within Microsoft Edge and Internet Explorer 11.

**To report a website as safe from the warning message**
- On the warning screen for the site, click **More Information**, and then click **Report that this site does not contain threats**. The site info is sent to the Microsoft feedback site, which provides further instructions.

**To report a website as unsafe from Microsoft Edge**
- If a site seems potentially dangerous, employees can report it to Microsoft by clicking **More (...)**, clicking **Send feedback**, and then clicking **Report unsafe site**.

**To report a website as unsafe from Internet Explorer 11**
- If a site seems potentially dangerous, employees can report it to Microsoft by clicking on the **Tools** menu, clicking **Windows Defender SmartScreen**, and then clicking **Report unsafe website**.

## Related topics
- [Threat protection](../index.md)

- [Windows Defender SmartScreen overview](windows-defender-smartscreen-overview.md)

>[!NOTE]
>Help to make this topic better by providing us with edits, additions, and feedback. For info about how to contribute to this topic, see [Contributing to TechNet content](https://github.com/Microsoft/windows-itpro-docs/blob/master/CONTRIBUTING.md).
