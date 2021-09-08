---
title: Configure and customize Windows 11 taskbar | Microsoft Docs
description: On Windows 11 devices devices, iin additional apps to the taskbar and remove default pinned apps from the taskbar by adding a section to a layout modification XML file. 
ms.assetid: 
manager: dougeby
ms.author: mandia
ms.reviewer: 
ms.prod: w11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
author: MandiOhlinger
ms.date: 09/07/2021
ms.localizationpriority: medium
---

# Pin apps to the Taskbar on Windows 11

**Applies to**:

- Windows 11

> **Looking for OEM information?** See [Customize the Taskbar](/windows-hardware/customize/desktop/customize-the-windows-11-taskbar) and [Customize the Start layout](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu).

On Windows 11 devices, you can pin apps to the taskbar. If your organization uses a common set of apps, or devices only run some apps, you may want to use this feature. You can pin more apps to the taskbar, and also remove the default pinned apps.

To add specific apps you want pinned to the taskbar, you use an XML file. You can use an existing XML file, or create a new file. If you have an XML file that's used on Windows 10 devices, you can also use it on Windows 11 devices. You may have to update the App IDs.

This article shows you how to create the XML file, add apps to the XML, and deploy the XML file.

## Before you begin

- There isn't a limit on the number of apps that you can pin. ??OEM docs say a max of 3 pinned apps?? In the XML file, add apps using the [Application User Model ID (AUMID)](./find-the-application-user-model-id-of-an-installed-app.md) or Desktop Application Link Path (the local path to the app).

- If you add an app that's not provisioned for the user on the device, the pinned icon won't show on the taskbar.??Is this still true??

- The order of apps in the XML file dictates the order of pinned apps on the taskbar, from left to right, and to the right of any existing apps pinned by the user. If the OS is configured to use a right-to-left language, then the taskbar order is reversed.

- It's recommended to use a Mobile Device Management (MDM) provider. MDM providers help manage your devices, and help manage apps on your devices. For Microsoft, that includes using Microsoft Endpoint Manager. Endpoint Manager includes Microsoft Intune, which is a cloud service, and Configuration Manager, which is on-premises.

  In this article, we mention these services. If you're not managing your devices using an MDM provider, the following resources may help you get started:

  - [Microsoft Endpoint Manager overview](/mem/endpoint-manager-overview)
  - [What is Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Microsoft Intune planning guide](/mem/intune/fundamentals/intune-planning-guide)
  - [What is Configuration Manager?](/mem/configmgr/core/understand/introduction)

## Create the XML file

1. In a text editor, such as Visual Studio Code, create a new XML file. To help you get started, you can copy and paste the following XML sample. The sample pins two apps to the taskbar: Microsoft Edge and File Explorer:

    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <LayoutModificationTemplate
        xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
        Version="1">
      <CustomTaskbarLayoutCollection>
        <defaultlayout:TaskbarLayout>
          <taskbar:TaskbarPinList>
            <taskbar:UWA AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
            <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk" />
          </taskbar:TaskbarPinList>
        </defaultlayout:TaskbarLayout>
     </CustomTaskbarLayoutCollection>
    </LayoutModificationTemplate>
    ```

2. In the `<taskbar:TaskbarPinList>` node, add (or remove) the apps you want pinned. You can pin Universal Windows Platform (UWP) apps and desktop apps:

    - `<taskbar:UWA>`: Select this option for UWP apps. Add the [AUMID](./find-the-application-user-model-id-of-an-installed-app.md) of the UWP app.
    - `<taskbar:DesktopApp>`: Select this option for desktop apps. Add the Desktop Application Link Path of the desktop app.

    ??You can pin as many apps as you want. OEM docs say a max of 3 pinned apps??. Just keep adding them to the list. Remember, the app order in the list is the same order the apps are shown on the taskbar.

    For more information, see [Get the AUMID and Desktop app link path](#get-the-aumid-and-desktop-app-link-path) (in this article).

3. In the `<CustomTaskbarLayoutCollection>` node, the apps you add are pinned after the default apps. If you want to remove the default apps, and only show the apps you add in the XML file, then add `PinListPlacement="Replace"`:

    - `<CustomTaskbarLayoutCollection>`: Keeps the default pinned apps. After the default apps, the apps you add are pinned.
    - `<CustomTaskbarLayoutCollection PinListPlacement="Replace">`: Unpins the default apps. Only the apps you add are pinned.

    If you want to remove some of the default pinned apps, then add `PinListPlacement="Replace"`. When you add your apps to `<taskbar:TaskbarPinList>`, include the default apps you still want pinned.

4. In the `<defaultlayout:TaskbarLayout>` node, use `region=" | "` to use different taskbar configurations based on the device locale and region.

    In the following XML example, two regions are added: `US|UK` and `DE|FR`. The taskbar applies when:

    - If the `<TaskbarPinList>` node has a country or region, then the apps are pinned on devices configured for that country or region.
    - If the `<TaskbarPinList>` node doesn't have a region tag for the current region, then the first `<TaskbarPinList>` node with no region is applied.
    - ??What happens if only a region is added, and device is configured with a different region? I assume no apps are pinned (other than the default)??

    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <LayoutModificationTemplate
        xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
        xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
        xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
        xmlns:taskbar="http://schemas.microsoft.com/Start/2014/TaskbarLayout"
        Version="1">

      <CustomTaskbarLayoutCollection PinListPlacement="Replace">
        <defaultlayout:TaskbarLayout region="US|UK">
          <taskbar:TaskbarPinList >
            <taskbar:UWA AppUserModelID="Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge" />
            <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk" />
            <taskbar:UWA AppUserModelID="Microsoft.Office.Word_8wekyb3d8bbwe!microsoft.word" />
            <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk"/>
            <taskbar:UWA AppUserModelID="Microsoft.Reader_8wekyb3d8bbwe!Microsoft.Reader" />
          </taskbar:TaskbarPinList>
        </defaultlayout:TaskbarLayout>
        <defaultlayout:TaskbarLayout region="DE|FR">
          <taskbar:TaskbarPinList>
            <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk" />
            <taskbar:UWA AppUserModelID="Microsoft.Office.Word_8wekyb3d8bbwe!microsoft.word" />
            <taskbar:UWA AppUserModelID="Microsoft.Office.Excel_8wekyb3d8bbwe!microsoft.excel" />
            <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk"/>
            <taskbar:UWA AppUserModelID="Microsoft.Reader_8wekyb3d8bbwe!Microsoft.Reader" />
          </taskbar:TaskbarPinList>
        </defaultlayout:TaskbarLayout>
        <defaultlayout:TaskbarLayout>
          <taskbar:TaskbarPinList>
            <taskbar:DesktopApp DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\System Tools\File Explorer.lnk" />
            <taskbar:UWA AppUserModelID="Microsoft.Office.Word_8wekyb3d8bbwe!microsoft.word" />
            <taskbar:DesktopApp DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk"/>
            <taskbar:UWA AppUserModelID="Microsoft.Reader_8wekyb3d8bbwe!Microsoft.Reader" />
          </taskbar:TaskbarPinList>
        </defaultlayout:TaskbarLayout>
      </CustomTaskbarLayoutCollection>
    </LayoutModificationTemplate>
    ```

5. Save the file, and name the file so you know what it is. For example, name the file something like `CustomTaskbar.xml`. Once you have the file, it's ready to be deployed to your Windows devices.

## Use Group Policy or MDM to create and deploy a taskbar policy

Now that you have the XML file with your customized task bar, you're ready to deploy it to devices in your organization. You can deploy your taskbar XML file using Group Policy, or using an MDM provider, like Microsoft Intune.

This section shows you how to deploy the XML both ways.

### Use Group Policy to deploy your XML file

Use the following steps to add your XML file to a group policy, and apply the policy:

1. Open your policy editor. For example, open Group Policy Management Console (GPMC) for domain-based group policies, or open `gpedit` for local policies.
2. Go to one of the following policies:

    - `Computer Configuration\Administrative Templates\Start Menu and Taskbar\Start Layout`
    - `User Configuration\Administrative Templates\Start Menu and Taskbar\Start Layout`

3. Double-select `Start Layout` > **Enable**. Enter the fully qualified path to your XML file, including the XML file name. You can enter a local path, like `C:\StartLayouts\CustomTaskbar.xml`, or a network path, like `\\Server\Share\CustomTaskbar.xml`. If the file isn't available when the user signs in, then the taskbar isn't changed. Users can't customize the taskbar when this setting is enabled. If using a network share, be sure to give users read access to the XML file.

    You policy looks like the following policy:

    :::image type="content" source="./images/customize-taskbar-windows-11/start-layout-group-policy.png" alt-text="Add your taskbar layout XML file to the Start Layout policy on Windows devices.":::

    The `User Configuration\Administrative Templates\Start Menu and Taskbar` policy includes other settings that control the taskbar. Some policies may not work as expected on Windows 11. Be sure to test your policies before broadly deploying them across your devices.

4. When you apply the policy, the taskbar includes your changes. The next time users sign in, they'll see the changes.

    For more information on using group policies, see [Implement Group Policy Objects](/learn/modules/implement-group-policy-objects/).

### Create a Microsoft Intune policy to deploy your XML file

MDM providers can deploy policies to devices managed by the organization, including organization-owned devices, and personal or bring your own device (BYOD). Using an MDM provider, such as Microsoft Intune, you can deploy a policy that configures the pinned list.

Use the following steps to create an Intune policy that deploys your taskbar XML file:

1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).

2. Select **Devices** > **Configuration profiles** > **Create profile**.

3. Enter the following properties:

    - **Platform**: Select **Windows 10 and later**.
    - **Profile type**: Select **Templates** > **Device restrictions** > **Create**.

4. In **Basics**, enter the following properties:

    - **Name**: Enter a descriptive name for the profile. Name your profiles so you can easily identify it later. For example, a good profile name is **Win11: Custom taskbar**.
    - **Description**: Enter a description for the profile. This setting is optional, and recommended.

5. Select **Next**.

6. In **Configuration settings**, select **Start** > **Start menu layout**. Browse to, and select your taskbar XML file.

7. Select **Next**, and configure the rest of the policy settings. For more specific information, see [Configure device restriction settings in Microsoft Intune](/mem/intune/configuration/device-restrictions-configure).

8. When the policy is created, you can deploy it now, or deploy it later. Since this policy is a customized taskbar, the policy can also be deployed before users sign in the first time. If you use [Windows Autopilot](/mem/autopilot/windows-autopilot) (opens another Microsoft web site), add the taskbar policy to your Windows Autopilot policy.

    For more information and guidance on assigning policies using Microsoft Intune, see [Assign user and device profiles in Microsoft Intune](/mem/intune/configuration/device-profile-assign).

> [!NOTE]
> For third party partner MDM solutions, you may need to use an OMA-URI setting for Start layout, based on the [Policy configuration service provider (CSP)](/windows/client-management/mdm/policy-configuration-service-provider). The OMA-URI setting is `./User/Vendor/MSFT/Policy/Config/Start/StartLayout`.

## Get the AUMID and Desktop app link path

In the layout modification XML file, you add apps in the XML markup. To pin an app, you enter the AUMID or Desktop Application Link Path. The easiest way to find this app information is to use the [Export-StartLayout](/powershell/module/startlayout/export-startlayout) Windows Powershell cmdlet:

1. On an existing Windows 11 device, pin the app to the Start menu.
2. Create a folder to save an output file. For example, create the `C:\Layouts` folder.
3. Open the Windows PowerShell app, and run the following cmdlet:

    ```powershell
    Export-StartLayout -Path "C:\Layouts\GetIDorPath.xml"
    ```

4. Open the generated GetIDorPath.xml file, and look for the app you pinned. When you find the app, get the AppID or Path. Add these properties to your XML file.

