---
title: Delete an AppLocker rule (Windows)
description: This article for IT professionals describes the steps to delete an AppLocker rule.
ms.assetid: 382b4be3-0df9-4308-89b2-dcf9df351eb5
ms.reviewer: 
ms.author: dansimp
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 11/09/2020
ms.technology: windows-sec
---

# Delete an AppLocker rule

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This article for IT professionals describes the steps to delete an AppLocker rule. 

As older apps are retired and new apps are deployed in your organization, it will be necessary to modify the application control policies. If an app becomes unsupported by the IT department or is no longer allowed due to the organization's security policy, then deleting the rule or rules associated with that app will prevent the app from running.

For info about testing an AppLocker policy to see what rules affect which files or applications, see [Test an AppLocker policy by Using Test-AppLockerPolicy](test-an-applocker-policy-by-using-test-applockerpolicy.md).

You can perform this task by using the Group Policy Management Console for an AppLocker policy in a Group Policy Object (GPO) or by using the Local Security Policy snap-in for an AppLocker policy on a local computer or in a security template. For info how to use these MMC snap-ins to administer 
AppLocker, see [Administer AppLocker](administer-applocker.md#bkmk-using-snapins).

These steps apply only for locally managed devices. If the device has AppLocker policies applied by using MDM or a GPO, the local policy will not override those settings.

## To delete a rule in an AppLocker policy

1.  Open the AppLocker console.
2.  Click the appropriate rule collection for which you want to delete the rule.
3.  In the details pane, right-click the rule to delete, click **Delete**, and then click **Yes**.

> [!Note]
> - When using Group Policy, the Group Policy Object must be distributed or refreshed for rule deletion to take effect on devices.
> - Application Identity service needs to be running for deleting Applocker rules. If you disable Applocker and delete Applocker rules, make sure to stop the Application Identity service after deleting Applocker rules. If the Application Identity service is stopped before deleting Applocker rules, and if Applocker blocks apps that are disabled, delete all of the files at `C:\Windows\System32\AppLocker`. 

When the following procedure is performed on the local device, the AppLocker policy takes effect immediately.

## To clear AppLocker policies on a single system or remote systems
Use the Set-AppLockerPolicy cmdlet with the -XMLPolicy parameter, using an .XML file that contains the following contents:

```xml
<AppLockerPolicy Version="1">
    <RuleCollection Type="Exe" EnforcementMode="NotConfigured" />
    <RuleCollection Type="Msi" EnforcementMode="NotConfigured" />
    <RuleCollection Type="Script" EnforcementMode="NotConfigured" />
    <RuleCollection Type="Dll" EnforcementMode="NotConfigured" />
    <RuleCollection Type="Appx" EnforcementMode="NotConfigured" />
    <RuleCollection Type="ManagedInstaller" EnforcementMode="NotConfigured" />
</AppLockerPolicy>
```

To use the Set-AppLockerPolicy cmdlet, first import the AppLocker modules:

```powershell
PS C:\Users\Administrator> import-module AppLocker
```

We will create a file (for example, clear.xml), place it in the same directory where we are executing our cmdlet, and add the preceding XML contents. Then run the following command:

```powershell
C:\Users\Administrator> Set-AppLockerPolicy -XMLPolicy .\clear.xml
```

This will remove all AppLocker Policies on a machine and could be potentially scripted to use on multiple machines using remote execution tools with accounts with proper access.

The following PowerShell commands must also be run to stop the AppLocker services and the effects of the former AppLocker policy.

```powershell
appidtel.exe stop [-mionly]
sc.exe config appid start=demand
sc.exe config appidsvc start=demand
sc.exe config applockerfltr start=demand
sc stop applockerfltr
sc stop appidsvc
sc stop appid
```