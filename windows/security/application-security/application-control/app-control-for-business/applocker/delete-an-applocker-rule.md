---
title: Delete an AppLocker rule
description: This article for IT professionals describes the steps to delete an AppLocker rule.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Delete an AppLocker rule

This article for IT professionals describes the steps to delete AppLocker rules.

As older apps are retired and new apps are deployed in your organization, it's necessary to modify the application control policies. If an app is no longer supported by your organization, then deleting the rule or rules associated with that app prevents the app from running.

For info about testing an AppLocker policy to see what rules affect which files or applications, see [Test an AppLocker policy by Using Test-AppLockerPolicy](test-an-applocker-policy-by-using-test-applockerpolicy.md).

To manage an AppLocker policy in a Group Policy Object (GPO), you can perform this task by using the Group Policy Management Console. To manage an AppLocker policy for the local computer or for use in a security template, use the Local Security Policy snap-in. For info how to use these MMC snap-ins to administer AppLocker, see [Administer AppLocker](administer-applocker.md#using-the-mmc-snap-ins-to-administer-applocker).

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
