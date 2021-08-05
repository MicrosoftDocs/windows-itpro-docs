---
title: Change the Windows 10 Start and taskbar using mobile device management | Microsoft Docs
description: In Windows 10, you can use a mobile device management (MDM) policy to deploy a customized Start and taskbar layout to users. For example, use Microsoft Intune to configure the start menu layout and taskbar, and deploy the policy to your devices.
ms.assetid: F487850D-8950-41FB-9B06-64240127C1E4
ms.reviewer: 
manager: dansimp
keywords: ["start screen", "start menu"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: greg-lindsay
ms.topic: article
ms.author: greglin
ms.localizationpriority: medium
ms.date: 08/05/2021
---

# Customize Windows 10 Start and taskbar with mobile device management (MDM)


**Applies to**

- Windows 10


>**Looking for consumer information?** [Customize the Start menu](https://go.microsoft.com/fwlink/p/?LinkId=623630)

In Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education, you can use a mobile device management (MDM) policy to deploy a customized Start and taskbar layout to users. No reimaging is required. The layout can be updated simply by overwriting the `.xml` file that contains the layout. This feature enables you to customize Start layouts for different departments or organizations, with minimal management overhead.

>[!NOTE]
>Support for applying a customized taskbar using MDM is added in Windows 10, version 1703.

**Before you begin**: [Customize and export Start layout](customize-and-export-start-layout.md) for desktop editions (also works for taskbar customization).

>[!WARNING]
>When a full Start layout is applied with this method, the users cannot pin, unpin, or uninstall apps from Start. Users can view and open all apps in the **All Apps** view, but they cannot pin any apps to Start. When a partial Start layout is applied, the contents of the specified tile groups cannot be changed, but users can move those groups, and can also create and customize their own groups.

 

## <a href="" id="bkmk-howstartscreencontrolworks"></a>How Start layout control works


Two features enable Start layout control:

-   The **Export-StartLayout** cmdlet in Windows PowerShell exports a description of the current Start layout in .xml file format. 

    >[!NOTE]
    >To import the layout of Start to a mounted Windows image, use the [Import-StartLayout](/powershell/module/startlayout/import-startlayout) cmdlet.

     

-   In Microsoft Intune, you select the Start layout XML file and add it to a device configuration profile. 

    >[!NOTE]
    >Please do not include XML Prologs like \<?xml version="1.0" encoding="utf-8"?\> in the Start layout XML file. The settings may not be reflected correctly.

## <a href="" id="bkmk-domaingpodeployment"></a>Create a policy for your customized Start layout

The following example uses Microsoft Intune to configure an MDM policy that applies a customized Start layout:

1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Select **Devices** > **Configuration profiles** > **Create profile**.

3. Enter the following properties:

    - **Platform**: Select **Windows 10 and later**.
    - **Profile type**: Select **Templates** > **Device restrictions** > **Create**.

4. In **Basics**, enter the following properties:

    - **Name**: Enter a descriptive name for the profile. Name your profiles so you can easily identify it later. For example, a good profile name is **Customize Start menu and taskbar**.
    - **Description**: Enter a description for the profile. This setting is optional, but recommended.

5. Select **Next**.

6. In **Configuration settings**, select **Start**:

    - If you're using an XML file, select **Start menu layout**. Browse to and select your Start layout XML file.
    - If you don't have an XML file, configure the others settings. For more information on these settings, see [Start settings in Microsoft Intune](/mem/intune/configuration/device-restrictions-windows-10#start).

7. Select **Next**.
8. In **Scope tags**, select **Next**. For more information about scope tags, see [Use RBAC and scope tags for distributed IT](/mem/intune/fundamentals/scope-tags).
9. In **Assignments**, select the user or groups that will receive your profile. Select **Next**. For more information on assigning profiles, see [Assign user and device profiles](device-profile-assign.md).
10. In **Review + create**, review your settings. When you select **Create**, your changes are saved, and the profile is assigned. The policy is also shown in the profiles list.

> [!NOTE]
> For third party partner MDM solutions, you may need to use an OMA-URI setting for Start layout, based on the [Policy configuration service provider (CSP)](/windows/client-management/mdm/policy-configuration-service-provider). The OMA-URI setting is `./User/Vendor/MSFT/Policy/Config/Start/StartLayout`.


## Next steps


- [Manage Windows 10 Start and taskbar layout](windows-10-start-layout-options-and-policies.md)
- [Configure Windows 10 taskbar](configure-windows-10-taskbar.md)
- [Customize and export Start layout](customize-and-export-start-layout.md)
- [Add image for secondary tiles](start-secondary-tiles.md)
- [Start layout XML for desktop editions of Windows 10 (reference)](start-layout-xml-desktop.md)
- [Customize Windows 10 Start and taskbar with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)
- [Customize Windows 10 Start and taskbar with provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)
- [Changes to Start policies in Windows 10](changes-to-start-policies-in-windows-10.md)
