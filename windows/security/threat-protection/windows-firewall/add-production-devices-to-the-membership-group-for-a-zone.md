---
title: Add Production Devices to the Membership Group for a Zone (Windows 10)
description: Add Production Devices to the Membership Group for a Zone
ms.assetid: 7141de15-5840-4beb-aabe-21c1dd89eb23
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Add Production Devices to the Membership Group for a Zone

**Applies to**
-   Windows 10
-   Windows Server 2016


After you test the GPOs for your design on a small set of devices, you can deploy them to the production devices.

**Caution**  
For GPOs that contain connection security rules that prevent unauthenticated connections, be sure to set the rules to request, not require, authentication during testing. After you deploy the GPO and confirm that all of your devices are successfully communicating by using authenticated IPsec, then you can modify the GPO to require authentication. Do not change the boundary zone GPO to require mode.

 

The method discussed in this guide uses the **Domain Computers** built-in group. The advantage of this method is that all new devices that are joined to the domain automatically receive the isolated domain GPO. To do this successfully, you must make sure that the WMI filters and security group filters exclude devices that must not receive the GPOs. Use device groups that deny both read and apply Group Policy permissions to the GPOs, such as a group used in the CG\_DOMISO\_NOIPSEC example design. Devices that are members of some zones must also be excluded from applying the GPOs for the main isolated domain. For more information, see the "Prevent members of a group from applying a GPO" section in [Assign Security Group Filters to the GPO](assign-security-group-filters-to-the-gpo.md).

Without such a group (or groups), you must either add devices individually or use the groups containing device accounts that are available to you.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the membership of the group for the GPO.

In this topic:

-   [Add the group Domain Devices to the GPO membership group](#to-add-domain-devices-to-the-gpo-membership-group)

-   [Refresh Group Policy on the devices in the membership group](#to-refresh-group-policy-on-a-device)

-   [Check which GPOs apply to a device](#to-see-which-gpos-are-applied-to-a-device)

## To add domain devices to the GPO membership group

1.  Open Active Directory Users and Computers.

2.  In the navigation pane, expand **Active Directory Users and Computers**, expand *YourDomainName*, and then the container in which you created the membership group.

3.  In the details pane, double-click the GPO membership group to which you want to add computers.

4.  Select the **Members** tab, and then click **Add**.

5.  Type **Domain Computers** in the text box, and then click **OK**.

6.  Click **OK** to close the group properties dialog box.

After a computer is a member of the group, you can force a Group Policy refresh on the computer.

## To refresh Group Policy on a device

From an elevated command prompt, type the following:

``` syntax
gpupdate /target:computer /force
```

After Group Policy is refreshed, you can see which GPOs are currently applied to the computer.

## To see which GPOs are applied to a device

From an elevated command prompt, type the following:

``` syntax
gpresult /r /scope:computer
```

 

 





