---
title: Add Test Devices to the Membership Group for a Zone (Windows)
description: Learn how to add devices to the group for a zone to test whether your Windows Defender Firewall with Advanced Security implementation works as expected.
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/07/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
---

# Add Test Devices to the Membership Group for a Zone


Before you deploy your rules to large numbers of devices, you must thoroughly test the rules to make sure that communications are working as expected. A misplaced WMI filter or an incorrectly typed IP address in a filter list can easily block communications between devices. Although we recommend that you set your rules to request mode until testing and deployment is complete. We also recommend that you initially deploy the rules to a few devices only to be sure that the correct GPOs are being processed by each device.

Add at least one device of each supported operating system type to each membership group. Make sure every GPO for a specific version of Windows and membership group has a device among the test group. After Group Policy has been refreshed on each test device, check the output of the **gpresult** command to confirm that each device is receiving only the GPOs it's supposed to receive.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the membership of the group for the GPO.

In this topic:

-   [Add the test devices to the GPO membership groups](#to-add-test-devices-to-the-gpo-membership-groups)

-   [Refresh Group Policy on the devices in each membership group](#to-refresh-group-policy-on-a-device)

-   [Check which GPOs apply to a device](#to-see-which-gpos-are-applied-to-a-device)

## To add test devices to the GPO membership groups

1.  Open Active Directory Users and Computers.

2.  In the navigation pane, expand **Active Directory Users and Computers**, expand *YourDomainName*, and then expand the container that holds your membership group account.

3.  In the details pane, double-click the GPO membership group to which you want to add devices.

4.  Select the **Members** tab, and then click **Add**.

5.  Type the name of the device in the text box, and then click **OK**.

6.  Repeat steps 5 and 6 for each extra device account or group that you want to add.

7.  Click **OK** to close the group properties dialog box.

After a device is a member of the group, you can force a Group Policy refresh on the device.

## To refresh Group Policy on a device

From an elevated command prompt, run the following command:

``` syntax
gpupdate /target:device /force
```

After Group Policy is refreshed, you can see which GPOs are currently applied to the device.

## To see which GPOs are applied to a device

From an elevated command prompt, run the following command:

``` syntax
gpresult /r /scope:computer
```

 

 





