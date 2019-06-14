---
title: Customize Windows 10 Start and taskbar with mobile device management (MDM) (Windows 10)
description: In Windows 10, you can use a mobile device management (MDM) policy to deploy a customized Start and tasbkar layout to users.
ms.assetid: F487850D-8950-41FB-9B06-64240127C1E4
ms.reviewer: 
manager: dansimp
keywords: ["start screen", "start menu"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: dansimp
ms.topic: article
ms.author: dansimp
ms.localizationpriority: medium
ms.date: 02/08/2018
---

# Customize Windows 10 Start and taskbar with mobile device management (MDM)


**Applies to**

- Windows 10


>**Looking for consumer information?** [Customize the Start menu](https://go.microsoft.com/fwlink/p/?LinkId=623630)

In Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education, you can use a mobile device management (MDM) policy to deploy a customized Start and taskbar layout to users. No reimaging is required, and the layout can be updated simply by overwriting the .xml file that contains the layout. This enables you to customize Start layouts for different departments or organizations, with minimal management overhead.

>[!NOTE]
>Support for applying a customized taskbar using MDM is added in Windows 10, version 1703.

**Before you begin**: [Customize and export Start layout](customize-and-export-start-layout.md) for desktop editions.

>[!WARNING]
>When a full Start layout is applied with this method, the users cannot pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they cannot pin any apps to Start. When a partial Start layout is applied, the contents of the specified tile groups cannot be changed, but users can move those groups, and can also create and customize their own groups.

 

## <a href="" id="bkmk-howstartscreencontrolworks"></a>How Start layout control works


Two features enable Start layout control:

-   The **Export-StartLayout** cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format. 

    >[!NOTE]
    >To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](https://docs.microsoft.com/powershell/module/startlayout/import-startlayout) cmdlet.

     

-   In Microsoft Intune, you select the Start layout XML file and add it to a device configuration profile. 

## <a href="" id="bkmk-domaingpodeployment"></a>Create a policy for your customized Start layout


This example uses Microsoft Intune to configure an MDM policy that applies a customized Start layout. See the documentation for your MDM solution for help in applying the policy.

1.  In the Microsoft Azure portal, search for **Intune** or go to **More services** > **Intune**.

2.  Select **Device configuration**.

3.  Select **Profiles**.

4.  Select **Create profile**.

5.  Enter a friendly name for the profile.

6.  Select **Windows 10 and later** for the platform.

7. Select **Device restrictions for the profile type.

8. Select **Start**.

9. In **Start menu layout**, browse to and select your Start layout XML File.

10. Select **OK** twice, and then select **Create**.

11. Assign the profile to a device group.

For other MDM solutions, you may need to use an OMA-URI setting for Start layout, based on the [Policy configuration service provider (CSP)](https://go.microsoft.com/fwlink/p/?LinkID=623244). The OMA-URI setting is `./User/Vendor/MSFT/Policy/Config/Start/StartLayout`.


## Related topics


- [Manage Windows 10 Start and taskbar layout](windows-10-start-layout-options-and-policies.md)
- [Configure Windows 10 taskbar](configure-windows-10-taskbar.md)
- [Customize and export Start layout](customize-and-export-start-layout.md)
- [Add image for secondary tiles](start-secondary-tiles.md)
- [Start layout XML for desktop editions of Windows 10 (reference)](start-layout-xml-desktop.md)
- [Customize Windows 10 Start and taskbar with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)
- [Customize Windows 10 Start and taskbar with provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)
- [Changes to Start policies in Windows 10](changes-to-start-policies-in-windows-10.md)
 

 





