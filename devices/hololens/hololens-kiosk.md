---
title: Set up HoloLens as a kiosk
description: Use a kiosk configuration to lock down the apps on HoloLens. 
ms.prod: hololens
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/27/2020
ms.custom: 
- CI 115262
- CI 111456
- CSSTroubleshooting
ms.reviewer: 
manager: laurawi
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Set up HoloLens as a kiosk

You can configure a HoloLens device to function as a fixed-purpose device, also called a *kiosk*, by configuring the device to run in kiosk mode. Kiosk mode limits the applications (or users) that are available on the device. Kiosk mode is a convenient feature that you can use to dedicate a HoloLens device to business apps, or to use the HoloLens device in an app demo.

This article provides information about aspects of kiosk configuration that are specific to HoloLens devices. For general information about the different types of Windows-based kiosks and how to configure them, see [Configure kiosks and digital signs on Windows desktop editions](https://docs.microsoft.com/windows/configuration/kiosk-methods).  

> [!IMPORTANT]  
> Kiosk mode determines which apps are available when a user signs in to the device. However, kiosk mode is not a security method. It does not stop an "allowed" app from opening another app that is not allowed. In order to block apps or processes from opening, use [Windows Defender Application Control (WDAC) CSP](https://docs.microsoft.com/windows/client-management/mdm/applicationcontrol-csp) to create appropriate policies.  

You can use kiosk mode in either a single-app or a multi-app configuration, and you can use one of three processes to set up and deploy the kiosk configuration.

> [!IMPORTANT]  
> Deleting the multi-app configuration removes the user lockdown profiles that the assigned access feature created. However, it does not revert all the policy changes. To revert these policies, you have to reset the device to the factory settings.

## Plan the kiosk deployment

### Kiosk mode requirements

You can configure any HoloLens 2 device to use kiosk mode.

To configure a HoloLens (1st gen) device to use kiosk mode, you must first make sure that the device runs Windows 10, version 1803, or a later version. If you have used the Windows Device Recovery Tool to recover your HoloLens (1st gen) device to its default build, or if you have installed the most recent updates, your device is ready to configure.

> [!IMPORTANT]  
> To help protect devices that run in kiosk mode, consider adding device management policies that turn off features such as USB connectivity. Additionally, check your update ring settings to make sure that automatic updates do not occur during business hours.

### Decide between a single-app kiosk or a multi-app kiosk

A single-app kiosk starts the specified app when the user signs in to the device. The Start menu is disabled, as is Cortana. A HoloLens 2 device does not respond to the [Start](hololens2-basic-usage.md#start-gesture) gesture. A HoloLens (1st gen) device does not respond to the [bloom](hololens1-basic-usage.md) gesture. Because only one app can run, the user cannot place other apps.

A multi-app kiosk displays the Start menu when the user signs in to the device. The kiosk configuration determines which apps are available on the Start menu. You can use a multi-app kiosk to provide an easy-to-understand experience for users by presenting to them only the things that they have to use, and removing the things they don't need to use.

The following table lists the feature capabilities in the different kiosk modes.

| &nbsp; |Start menu |Quick Actions menu |Camera and video |Miracast |Cortana |Built-in voice commands |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|Single-app kiosk |Disabled |Disabled   |Disabled |Disabled   |Disabled |Enabled<sup>1</sup> |
|Multi-app kiosk |Enabled |Enabled<sup>2</sup> |Available<sup>2</sup> |Available<sup>2</sup> |Available<sup>2, 3</sup>  |Enabled<sup>1</sup> |

> <sup>1</sup> Voice commands that relate to disabled features do not function.  
> <sup>2</sup> For more information about how to configure these features, see [Select kiosk apps](#plan-kiosk-apps).  
> <sup>3</sup> Even if Cortana is disabled, the built-in voice commands are enabled.

The following table lists the user support features of the different kiosk modes.

| &nbsp; |Supported user types | Automatic sign-in | Multiple access levels |
| --- | --- | --- | --- |
|Single-app kiosk |Managed Service Account (MSA) in Azure Active Directory (AAD) or local account |Yes |No |
|Multi-app kiosk |AAD account |No |Yes |

For examples of how to use these capabilities, see the following table.

|Use a single-app kiosk for: |Use a multi-app kiosk for: |
| --- | --- |
|A device that runs only a Dynamics 365 Guide for new employees. |A device that runs both Guides and Remote Assistance for a range of employees. |
|A device that runs only a custom app. |A device that functions as a kiosk for most users (running only a custom app), but functions as a standard device for a specific group of users. |

### Plan kiosk apps

For general information about how to choose kiosk apps, see [Guidelines for choosing an app for assigned access (kiosk mode)](https://docs.microsoft.com/windows/configuration/guidelines-for-assigned-access-app).

If you use the Windows Device Portal to configure a single-app kiosk, you select the app during the setup process.  

If you use a Mobile Device Management (MDM) system or a provisioning package to configure kiosk mode, you use the [AssignedAccess Configuration Service Provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/assignedaccess-csp) to specify applications. The CSP uses [Application User Model IDs (AUMIDs)](https://docs.microsoft.com/windows/configuration/find-the-application-user-model-id-of-an-installed-app) to identify applications. The following table lists the AUMIDs of some in-box applications that you can use in a multi-app kiosk.

> [!CAUTION]
> You cannot select the Shell app as a kiosk app. Addition, we recommend that you do **not** select Microsoft Edge, Microsoft Store, or File Explorer as a kiosk app.  

<a id="aumids"></a>

|App Name |AUMID |
| --- | --- |
|3D Viewer |Microsoft.Microsoft3DViewer\_8wekyb3d8bbwe\!Microsoft.Microsoft3DViewer |
|Calendar |microsoft.windowscommunicationsapps\_8wekyb3d8bbwe\!microsoft.windowslive.calendar |
|Camera<sup>1, 2</sup> |HoloCamera\_cw5n1h2txyewy\!HoloCamera |
|Cortana<sup>3</sup> |Microsoft.549981C3F5F10\_8wekyb3d8bbwe\!App |
|Device Picker |HoloDevicesFlow\_cw5n1h2txyewy\!HoloDevicesFlow |
|Dynamics 365 Guides |Microsoft.Dynamics365.Guides\_8wekyb3d8bbwe\!MicrosoftGuides |
|Dynamics 365 Remote Assist |Microsoft.MicrosoftRemoteAssist\_8wekyb3d8bbwe\!Microsoft.RemoteAssist |
|Feedback&nbsp;Hub |Microsoft.WindowsFeedbackHub\_8wekyb3d8bbwe\!App |
|File Explorer |c5e2524a-ea46-4f67-841f-6a9465d9d515_cw5n1h2txyewy!App |
|Mail |microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail |
|Microsoft Store |Microsoft.WindowsStore_8wekyb3d8bbwe!App |
|Miracast<sup>4</sup> |&nbsp; |
|Movies & TV |Microsoft.ZuneVideo\_8wekyb3d8bbwe\!Microsoft.ZuneVideo |
|OneDrive |microsoft.microsoftskydrive\_8wekyb3d8bbwe\!App |
|Photos |Microsoft.Windows.Photos\_8wekyb3d8bbwe\!App |
|Settings |HolographicSystemSettings\_cw5n1h2txyewy\!App |
|Tips |Microsoft.HoloLensTips\_8wekyb3d8bbwe\!HoloLensTips |

> <sup>1</sup> To enable photo or video capture, you have to enable the Camera app as a kiosk app.  
> <sup>2</sup> When you enable the Camera app, be aware of the following conditions:
> - The Quick Actions menu includes the Photo and Video buttons.  
> - You should also enable an app (such as Photos, Mail, or OneDrive) that can interact with or retrieve pictures.  
>  
> <sup>3</sup> Even if you do not enable Cortana as a kiosk app, built-in voice commands are enabled. However, commands that are related to disabled features have no effect.  
> <sup>4</sup> You cannot enable Miracast directly. To enable Miracast as a kiosk app, enable the Camera app and the Device Picker app.

### Plan user and device groups

In an MDM environment, you use groups to manage device configurations and user access. 

The kiosk configuration profile includes the **User logon type** setting. **User logon type** identifies the user (or group that contains the users) who can use the app or apps that you add. If a user signs in by using an account that is not included in the configuration profile, that user cannot use apps on the kiosk.  

> [!NOTE]  
> The **User logon type** of a single-app kiosk specifies a single user account. This is the user context under which the kiosk runs. The **User logon type** of a multi-app kiosk can specify one or more user accounts or groups that can use the kiosk.

Before you can deploy the kiosk configuration to a device, you have to *assign* the kiosk configuration profile to a group that contains the device or a user who can sign in to the device. This setting produces behavior such as the following.

- If the device is a member of the assigned group, the kiosk configuration deploys to the device the first time that any user signs in on the device.  
- If the device is not a member of the assigned group, but a user who is a member of that group signs in, the kiosk configuration deploys to the device at that time.

For a full discussion of the effects of assigning configuration profiles in Intune, see [Assign user and device profiles in Microsoft Intune](https://docs.microsoft.com/intune/configuration/device-profile-assign).

> [!NOTE]  
> The following examples describe multi-app kiosks. Single-app kiosks behave in a similar manner, but only one user account gets the kiosk experience.

**Example 1**

You use a single group (Group 1) for both devices and users. One device and users A, B, and C are members of this group. You configure the kiosk configuration profile as follows:  

- **User logon type**: Group 1
- **Assigned group**: Group 1

Regardless of which user signs on to the device first (and goes through the Out-of-Box Experience, or OOBE), the kiosk configuration deploys to the device. Users A, B, and C can all sign in to the device and get the kiosk experience.

**Example 2**

You contract out devices to two different vendors who need different kiosk experiences. Both vendors have users, and you want all the users to have access to kiosks from both their own vendor and the other vendor. You configure groups as follows:

- Device Group 1:
  - Device 1 (Vendor 1)
  - Device 2 (Vendor 1)

- Device Group 2:
  - Device 3 (Vendor 2)
  - Device 4 (Vendor 2)

- User Group:
  - User A (Vendor 1)
  - User B (Vendor 2)

You create two kiosk configuration profiles that have the following settings:

- Kiosk Profile 1:
   - **User logon type**: User Group
   - **Assigned group**: Device Group 1

- Kiosk Profile 2:
   - **User logon type**: User Group
   - **Assigned group**: Device Group 2

These configurations produce the following results:

- When any user signs in to Device 1 or Device 2, Intune deploys Kiosk Profile 1 to that device.
- When any user signs in to Device 3 or Device 4, Intune deploys Kiosk Profile 2 to that device.
- User A and user B can sign in to any of the four devices. If they sign in to Device 1 or Device 2, they see the Vendor 1 kiosk experience. If they sign in to Device 3 or Device 4, they see the Vendor 2 kiosk experience.

#### Profile conflicts

If two or more kiosk configuration profiles target the same device, they conflict. In the case of Intune-managed devices, Intune does not apply any of the conflicting profiles.

Other kinds of profiles and policies, such as device restrictions that are not related to the kiosk configuration profile, do not conflict with the kiosk configuration profile.

### Select a deployment method

You can select one of the following methods to deploy kiosk configurations:

- [Microsoft Intune or other mobile device management (MDM) service](#use-microsoft-intune-or-other-mdm-to-set-up-a-single-app-or-multi-app-kiosk)

- [Provisioning package](#use-a-provisioning-package-to-set-up-a-single-app-or-multi-app-kiosk)

- [Windows Device Portal](#use-the-windows-device-portal-to-set-up-a-single-app-kiosk)

   > [!NOTE]  
   > Because this method requires that Developer Mode be enabled on the device, we recommend that you use it only for demonstrations.

The following table lists the capabilities and benefits of each of the deployment methods.

| &nbsp; |Deploy by using Windows Device Portal |Deploy by using a provisioning package |Deploy by using MDM |
| --------------------------- | ------------- | -------------------- | ---- |
|Deploy single-app kiosks   | Yes           | Yes                  | Yes  |
|Deploy multi-app kiosks    | No            | Yes                  | Yes  |
|Deploy to local devices only | Yes           | Yes                  | No   |
|Deploy by using Developer Mode |Required       | Not required            | Not required   |
|Deploy by using Azure Active Directory (AAD)  | Not required            | Not required                   | Required  |
|Deploy automatically      | No            | No                   | Yes  |
|Deployment speed            | Fastest       | Fast                 | Slow |
|Deploy at scale | Not recommended    | Not recommended        | Recommended |

## Use Microsoft Intune or other MDM to set up a single-app or multi-app kiosk

To set up kiosk mode by using Microsoft Intune or another MDM system, follow these steps.

1. [Prepare to enroll the devices](#mdmenroll).
1. [Create a kiosk configuration profile](#mdmprofile).
1. Configure the kiosk.
   - [Configure the settings for a single-app kiosk](#mdmconfigsingle).
   - [Configure the settings for a multi-app kiosk](#mdmconfigmulti).
1. [Assign the kiosk configuration profile to a group](#mdmassign).
1. Deploy the devices.
   - [Deploy a single-app kiosk](#mdmsingledeploy).
   - [Deploy a multi-app kiosk](#mdmmultideploy).

### <a id="mdmenroll"></a>MDM, step 1 &ndash; Prepare to enroll the devices

You can configure your MDM system to enroll HoloLens devices automatically when the user first signs in, or have users enroll devices manually. The devices also have to be joined to your Azure AD domain, and assigned to the appropriate groups.

For more information about how to enroll the devices, see [Enroll HoloLens in MDM](hololens-enroll-mdm.md) and [Intune enrollment methods for Windows devices](https://docs.microsoft.com/mem/intune/enrollment/windows-enrollment-methods).

### <a id="mdmprofile"></a>MDM, step 2 &ndash; Create a kiosk configuration profile

1. Open the [Azure](https://portal.azure.com/) portal and sign in to your Intune administrator account.
1. Select **Microsoft Intune** > **Device configuration - Profiles** > **Create profile**.
1. Enter a profile name.
1. Select **Platform** > **Windows 10 and later**, and then select **Profile type** >**Device restrictions**.
1. Select **Configure** > **Kiosk**, and then select one of the following:
   - To create a single-app kiosk, select **Kiosk Mode** > **Single-app kiosk**.
   - To create a multi-app kiosk, select **Kiosk Mode** > **Multi-app kiosk**.
1. To start configuring the kiosk, select **Add**.

Your next steps differ depending on the type of kiosk that you want. For more information, select one of the following options:  

- [Single-app kiosk](#mdmconfigsingle)
- [Multi-app kiosk](#mdmconfigmulti)

For more information about how to create a kiosk configuration profile, see [Windows 10 and Windows Holographic for Business device settings to run as a dedicated kiosk using Intune](https://docs.microsoft.com/intune/configuration/kiosk-settings).

### <a id="mdmconfigsingle"></a>MDM, step 3 (single-app) &ndash;  Configure the settings for a single-app kiosk

This section summarizes the settings that a single-app kiosk requires. For more details, see the following articles:

- For information about how to configure a kiosk configuration profile in Intune, see [How to Configure Kiosk Mode Using Microsoft Intune](hololens-commercial-infrastructure.md#how-to-configure-kiosk-mode-using-microsoft-intune).
- For more information about the available settings for single-app kiosks in Intune, see [Single full-screen app kiosks](https://docs.microsoft.com/intune/configuration/kiosk-settings-holographic#single-full-screen-app-kiosks)
- For other MDM services, check your provider's documentation for instructions. If you have to use a custom XML configuration to set up a kiosk in your MDM service, [create an XML file that defines the kiosk configuration](#ppkioskconfig).

1. Select **User logon type** > **Local user account**, and then enter the user name of the local (device) account or Microsoft Account (MSA) that can sign in to the kiosk.
   > [!NOTE]  
   > **Autologon** user account types aren't supported on Windows Holographic for Business.
1. Select **Application type** > **Store app**, and then select an app from the list.

Your next step is to [assign](#mdmassign) the profile to a group.

### <a id="mdmconfigmulti"></a>MDM, step 3 (multi-app) &ndash; Configure the settings for a multi-app kiosk

This section summarizes the settings that a multi-app kiosk requires. For more detailed information, see the following articles:

- For information about how to configure a kiosk configuration profile in Intune, see [How to Configure Kiosk Mode Using Microsoft Intune](hololens-commercial-infrastructure.md#how-to-configure-kiosk-mode-using-microsoft-intune).
- For more information about the available settings for multi-app kiosks in Intune, see [Multi-app kiosks](https://docs.microsoft.com/mem/intune/configuration/kiosk-settings-holographic#multi-app-kiosks)
- For other MDM services, check your provider's documentation for instructions. If you need to use a custom XML configuration to set up a kiosk in your MDM service, [create an XML file that defines the kiosk configuration](#ppkioskconfig). If you use an XML file, make sure to include the [Start layout](#start-layout-for-hololens).  
- You can optionally use a custom Start layout with Intune or other MDM services. For more information, see [Start layout file for MDM (Intune and others)](#start-layout-file-for-mdm-intune-and-others).

1. Select **Target Windows 10 in S mode devices** > **No**.  
   >[!NOTE]  
   > S mode isn't supported on Windows Holographic for Business.
1. Select **User logon type** > **Azure AD user or group** or **User logon type** > **HoloLens visitor**, and then add one or more user groups or accounts.  

   Only users who belong to the groups or accounts that you specify in **User logon type** can use the kiosk experience.

1. Select one or more apps by using the following options:
   - To add an uploaded line-of-business app, select **Add store app** and then select the app that you want.
   - To add an app by specifying its AUMID, select **Add by AUMID** and then enter the AUMID of the app. [See the list of available AUMIDs](#aumids)

Your next step is to [assign](#mdmassign) the profile to a group.

### <a id="mdmassign"></a>MDM, step 4 &ndash; Assign the kiosk configuration profile to a group

Use the **Assignments** page of the kiosk configuration profile to set where you want the kiosk configuration to deploy. In the simplest case, you assign the kiosk configuration profile to a group that will contain the HoloLens device when the device enrolls in MDM.

### <a id="mdmsingledeploy"></a>MDM, step 5 (single-app) &ndash; Deploy a single-app kiosk

When you use an MDM system, you can enroll the device in MDM during OOBE. After OOBE finishes, signing in to the device is easy.

During OOBE, follow these steps:

1. Sign in by using the account that you specified in the kiosk configuration profile.
1. Enroll the device. Make sure that the device is added to the group that the kiosk configuration profile is assigned to.
1. Wait for OOBE to finish, for the store app to download and install, and for policies to be applied. Then restart the device.

The next time you sign in to the device, the kiosk app should automatically start.

If you don't see your kiosk configuration at this point, [check the assignment status](https://docs.microsoft.com/intune/configuration/device-profile-monitor).

### <a id="mdmmultideploy"></a>MDM, step 5 (multi-app) &ndash; Deploy a multi-app kiosk

When you use an MDM system, you can join the device to your Azure AD tenant and enroll the device in MDM during OOBE. If appropriate, provide the enrollment information to the users so that they have it available during the OOBE process.

> [!NOTE]  
> If you have assigned the kiosk configuration profile to a group that contains users, make sure that one of those user accounts is the first account to sign in to the device.

During OOBE, follow these steps:

1. Sign in by using the account that belongs to the **User logon type** group.
1. Enroll the device.
1. Wait for any apps that are part of the kiosk configuration profile to download and install. Also, wait for policies to be applied.  
1. After OOBE finishes, you can install additional apps from the Microsoft store or by sideloading. [Required apps](https://docs.microsoft.com/mem/intune/apps/apps-deploy#assign-an-app) for the group that the device belongs to install automatically.
1. After the installation finishes, restart the device.

The next time you sign in to the device by using an account that belongs to the **User logon type**, the kiosk app should automatically launch.

If you don't see your kiosk configuration at this point, [check the assignment status](https://docs.microsoft.com/intune/configuration/device-profile-monitor).

## Use a provisioning package to set up a single-app or multi-app kiosk

To set up kiosk mode by using a provisioning package, follow these steps.

1. [Create an XML file that defines the kiosk configuration.](#ppkioskconfig), including a [Start layout](#start-layout-for-hololens).
2. [Add the XML file to a provisioning package.](#ppconfigadd)
3. [Apply the provisioning package to HoloLens.](#ppapply)

### <a id="ppkioskconfig"></a>Provisioning package, step 1 &ndash; Create a kiosk configuration XML file

Follow [the general instructions to create a kiosk configuration XML file for Windows desktop](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps#create-xml-file), except for the following:

- Do not include Classic Windows applications (Win32). HoloLens does not support these applications.
- Use the [placeholder Start layout XML](#start-layout-for-hololens) for HoloLens.
- Optional: Add guest access to the kiosk configuration

#### <a id="ppkioskguest"></a>Optional: Add guest access to the kiosk configuration

In the [**Configs** section of the XML file](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps#configs), you can configure a special group named **Visitor** to allow guests to use the kiosk. When the kiosk is configured to support the **Visitor** special group, a "**Guest**" option is added to the sign-in page. The **Guest** account does not require a password, and any data that is associated with the account is deleted when the account signs out.

To enable the **Guest** account, add the following snippet to your kiosk configuration XML:

```xml
<Configs>
  <Config>  
    <SpecialGroup Name="Visitor" />  
    <DefaultProfile Id="enter a profile ID"/>  
  </Config>  
</Configs>  
```

#### <a id="start-layout-for-hololens"></a>Placeholder Start layout for HoloLens

If you use a [provisioning package](##use-a-provisioning-package-to-set-up-a-single-app-or-multi-app-kiosk) to configure a multi-app kiosk, the procedure requires a Start layout. Start layout customization isn't supported in Windows Holographic for Business. Therefore, you'll have to use a placeholder Start layout.

> [!NOTE]  
> Because a single-app kiosk starts the kiosk app when a user signs in, it does not use a Start menu and does not have to have a Start layout.

> [!NOTE]  
> If you use [MDM](#use-microsoft-intune-or-other-mdm-to-set-up-a-single-app-or-multi-app-kiosk) to set up a multi-app kiosk, you can optionally use a Start layout. For more information, see [Placeholder Start layout file for MDM (Intune and others)](#start-layout-file-for-mdm-intune-and-others).

For the Start layout, add the following **StartLayout** section to the kiosk provisioning XML file:

```xml
<!-- This section is required for parity with Desktop Assigned Access. It is not currently used on HoloLens -->
            <StartLayout>
                <![CDATA[<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
                      <LayoutOptions StartTileGroupCellWidth="6" />
                      <DefaultLayoutOverride>
                        <StartLayoutCollection>
                          <defaultlayout:StartLayout GroupCellWidth="6">
                            <start:Group Name="">
                              <start:Tile Size="2x2" Column="0" Row="0" AppUserModelID="placeholderpackagename_kzf8qxf38zg5c!App" />
                            </start:Group>
                          </defaultlayout:StartLayout>
                        </StartLayoutCollection>
                      </DefaultLayoutOverride>
                    </LayoutModificationTemplate>
                ]]>
            </StartLayout>
            <!-- This section is required for parity with Desktop Assigned Access. It is not currently used on HoloLens -->
```

#### <a id="start-layout-file-for-mdm-intune-and-others"></a>Placeholder Start layout file for MDM (Intune and others)

Save the following sample as an XML file. You can use this file when you configure the multi-app kiosk in Microsoft Intune (or in another MDM service that provides a kiosk profile).

> [!NOTE]
> If you have to use a custom setting and full XML configuration to set up a kiosk in your MDM service, use the [Start layout instructions for a provisioning package](#start-layout-for-hololens).

```xml
<LayoutModificationTemplate
    xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification"
    xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout"
    xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout"
    Version="1">
  <RequiredStartGroupsCollection>
    <RequiredStartGroups>
      <AppendGroup Name="">
        <start:Tile Size="2x2" Column="0" Row="0" AppUserModelID="placeholderpackagename_kzf8qxf38zg5c!App" />
      </AppendGroup>
    </RequiredStartGroups>
  </RequiredStartGroupsCollection>
 </LayoutModificationTemplate>
```

### <a id="ppconfigadd"></a>Prov. package, step 2 &ndash; Add the kiosk configuration XML file to a provisioning package

1. Open [Windows Configuration Designer](https://www.microsoft.com/store/apps/9nblggh4tx22).
1. Select **Advanced provisioning**, enter a name for your project, and then select **Next**.
1. Select **Windows 10 Holographic**, and then select **Next**.
1. Select **Finish**. The workspace for your package opens.
1. Select **Runtime settings** > **AssignedAccess** > **MultiAppAssignedAccessSettings**.
1. In the center pane, select **Browse** to locate and select the kiosk configuration XML file that you created.

   ![Screenshot of the MultiAppAssignedAccessSettings field in Windows Configuration Designer](./images/multiappassignedaccesssettings.png)

1. **Optional**. (If you want to apply the provisioning package after the initial setup of the device, and there is an admin user already available on the kiosk device, skip this step.) Select **Runtime settings** &gt; **Accounts** &gt; **Users**, and then create a user account. Provide a user name and password, and then select **UserGroup** > **Administrators**.  
  
     By using this account, you can view the provisioning status and logs.  
1. **Optional**. (If you already have a non-admin account on the kiosk device, skip this step.) Select **Runtime settings** &gt; **Accounts** &gt; **Users**, and then create a local user account. Make sure that the user name is the same as for the account that you specify in the configuration XML. Select **UserGroup** > **Standard Users**.
1. Select **File** > **Save**.
1. Select **Export** > **Provisioning package**, and then select **Owner** > **IT Admin**. This sets the precedence of this provisioning package higher than provisioning packages that are applied to this device from other sources.
1. Select **Next**.
1. On the **Provisioning package security** page, select a security option.
   > [!IMPORTANT]  
   > If you select **Enable package signing**, you also have to select a valid certificate to use for signing the package. To do this, select **Browse** and select the certificate that you want to use to sign the package.
   
   > [!CAUTION]  
   > Do not select **Enable package encryption**. On HoloLens devices, this setting causes provisioning to fail.
1. Select **Next**.
1. Specify the output location where you want the provisioning package to go when it's built. By default, Windows Configuration Designer uses the project folder as the output location. If you want to change the output location, select **Browse**. When you are finished, select **Next**.
1. Select **Build** to start building the package. The provisioning package doesn't take long to build. The build page displays the project information, and the progress bar indicates the build status.

### <a id="ppapply"></a>Provisioning package, step 3 &ndash; Apply the provisioning package to HoloLens

The "Configure HoloLens by using a provisioning package" article provides detailed instructions to apply the provisioning package under the following circumstances:

- You can initially [apply a provisioning package to HoloLens during setup](hololens-provisioning.md#apply-a-provisioning-package-to-hololens-during-setup).

- You can also [apply a provisioning package to HoloLens after setup](hololens-provisioning.md#4-apply-a-provisioning-package-to-hololens-after-setup).

## Use the Windows Device Portal to set up a single-app kiosk

To set up kiosk mode by using the Windows Device Portal, follow these steps.

> [!IMPORTANT]
> Kiosk mode is available only if the device has [Windows Holographic for Business](hololens1-upgrade-enterprise.md) installed.

1. [Set up the HoloLens device to use the Windows Device Portal](https://developer.microsoft.com/windows/mixed-reality/using_the_windows_device_portal#setting_up_hololens_to_use_windows_device_portal). The Device Portal is a web server on your HoloLens that you can connect to from a web browser on your PC.

    > [!CAUTION]
    > When you set up HoloLens to use the Device Portal, you have to enable Developer Mode on the device. Developer Mode on a device that has Windows Holographic for Business enables you to side-load apps. However, this setting creates a risk that a user can install apps that have not been certified by the Microsoft Store. Administrators can block the ability to enable Developer Mode by using the **ApplicationManagement/AllowDeveloper Unlock** setting in the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider). [Learn more about Developer Mode.](https://docs.microsoft.com/windows/uwp/get-started/enable-your-device-for-development#developer-mode)
    
1. On a computer, connect to the HoloLens by using [Wi-Fi](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal#connecting_over_wi-fi) or [USB](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal#connecting_over_usb).

1. Do one of the following:
   - If you are connecting to the Windows Device Portal for the first time, [create a user name and password](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal#creating_a_username_and_password)
   - Enter the user name and password that you previously set up.

    > [!TIP]
    > If you see a certificate error in the browser, follow [these troubleshooting steps](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal#security_certificate).

1. In the Windows Device Portal, select **Kiosk Mode**.

1. Select **Enable Kiosk Mode**, select an app to run when the device starts, and then select **Save**.

    ![Kiosk Mode](images/kiosk.png)
1. Restart HoloLens. If you still have your Device Portal page open, you can select **Restart** at the top of the page.

## More information

Watch how to configure a kiosk by using a provisioning package.  
> [!VIDEO https://www.microsoft.com/videoplayer/embed/fa125d0f-77e4-4f64-b03e-d634a4926884?autoplay=false]
