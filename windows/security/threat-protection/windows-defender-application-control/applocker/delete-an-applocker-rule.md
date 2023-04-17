---
title: Delete an AppLocker rule (Windows)
description: This article for IT professionals describes the steps to delete an AppLocker rule.
ms.assetid: 382b4be3-0df9-4308-89b2-dcf9df351eb5
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.date: 03/10/2023
ms.technology: itpro-security
---

# Delete an AppLocker rule

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This article for IT professionals describes the steps to delete AppLocker rules.

As older apps are retired and new apps are deployed in your organization, it's necessary to modify the application control policies. If an app is no longer supported by your organization, then deleting the rule or rules associated with that app prevents the app from running.

For info about testing an AppLocker policy to see what rules affect which files or applications, see [Test an AppLocker policy by Using Test-AppLockerPolicy](test-an-applocker-policy-by-using-test-applockerpolicy.md).

You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

These steps apply only for locally managed devices. Any AppLocker policies delivered through MDM or Group Policy must be removed using those tools.

## To delete a rule in an AppLocker policy

1. Open the AppLocker console.
2. Select the appropriate rule collection for which you want to delete the rule.
3. In the details pane, right-click the rule to delete, select **Delete**, and then select **Yes**.

> [!NOTE]
>
> - When using Group Policy, the Group Policy Object must be distributed or refreshed for rule deletion to take effect on devices.
> - Application Identity service needs to be running for deleting Applocker rules. If you disable Applocker and delete Applocker rules, make sure to stop the Application Identity service after deleting Applocker rules. If the Application Identity service is stopped before deleting Applocker rules, and if Applocker blocks apps that are disabled, delete all of the files at `C:\Windows\System32\AppLocker`.

When the following procedure is performed on the local device, the AppLocker policy takes effect immediately.

## To clear AppLocker policies on a single system or remote systems

First import the AppLocker modules for PowerShell:

```powershell
PS C:\Users\Administrator> import-module AppLocker
```

Create a file called clear.xml with the following XML content and save it to your desktop.

```xml
<AppLockerPolicy Version="1" />
```

Then run the following command from an elevated PowerShell session to remove all local AppLocker policies from the device:

```powershell
C:\Users\Administrator> Set-AppLockerPolicy -XMLPolicy $env:USERPROFILE\Desktop\clear.xml
```

Run the following PowerShell commands to stop the AppLocker services and change their startup configuration.

```powershell
appidtel.exe stop [-mionly]
sc.exe config appid start=demand
sc.exe config appidsvc start=demand
sc.exe config applockerfltr start=demand
sc.exe stop applockerfltr
sc.exe stop appidsvc
sc.exe stop appid
```

All of these steps can be run on a single machine or deployed as a script to multiple devices.
