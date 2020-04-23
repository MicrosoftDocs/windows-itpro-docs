---
title: Set up HoloLens as a kiosk for specific applications
description: Use a kiosk configuration to lock down the apps on HoloLens. 
ms.prod: hololens
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 03/12/2020
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

This article provides information about aspects of configuring kiosks that are specific to HoloLens devices. For general information about types of Windows-based kiosks and how to configure them, see [Configure kiosks and digital signs on Windows desktop editions](https://docs.microsoft.com/windows/configuration/kiosk-methods).  

> [!IMPORTANT]  
> Kiosk mode determines which apps are available when a user signs in to the device. However, kiosk mode is not a security limitation. It does not stop an "allowed" app from launching an app that is not allowed. In order to block apps or processes from launching, use [Windows Defender Application Control (WDAC) CSP](https://docs.microsoft.com/windows/client-management/mdm/applicationcontrol-csp) to create appropriate policies.  

You can use kiosk mode in one of two configurations (single-app kiosk or multi-app kiosk), and you can use select one of three processes to set up and deploy the kiosk configuration.

> [!WARNING]  
> The assigned access feature that enables kiosk mode is intended for corporate-owned fixed-purpose devices. When the multi-app assigned access configuration is applied on the device, [certain policies](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps#mdm-policy) are enforced system-wide. These policies impact other users on the device.  
>  
> Deleting the multi-app configuration removes the user lockdown profiles that the assigned access feature put in place. However, it does not revert all of the policy changes. To revert these policies, you have to reset the device to the factory settings.

## Plan the kiosk deployment

### Kiosk mode requirements

You can configure any HoloLens 2 device to use kiosk mode.

To configure a HoloLens (1st gen) device to use kiosk mode, you must first make sure that the device runs Windows 10, version 1803, or a newer version. If you have used the Windows Device Recovery Tool to recover your HoloLens (1st gen) device to its default build, or if you have installed the most recent updates, then your device is ready.

> [!IMPORTANT]  
> To help protect devices that run in kiosk mode, consider adding device management policies that turn off features such as USB connectivity. Additionally, check your update ring settings to make sure that automatic updates do not occur during business hours.

### Decide between a single-app kiosk or a multi-app kiosk

A single-app kiosk starts the specified app when the user signs in to the device. The Start menu is disabled, as is Cortana. A HoloLens 2 device does not respond to the [Start](hololens2-basic-usage.md#start-gesture) gesture. A HoloLens (1st gen) device does not respond to the [bloom](hololens1-basic-usage.md) gesture. Because only one app can run, the user cannot place other apps.

A multi-app kiosk displays the start menu when the user signs in to the device. The kiosk configuration determines what apps are available on the Start menu. You can use a multi-app kiosk to provide an easy-to-understand experience for users by putting in front of them only the things they need to use, and removing from their view the things they don't need to access.

The following table lists the feature capabilities in the different kiosk modes.

| &nbsp; |Start menu/pins panel |Quick Actions menu |Camera and video |Miracast |Cortana |Built-in voice commands |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|Single-app kiosk |Disabled |Disabled   |Disabled |Disabled   |Disabled |Enabled<sup>1</sup> |
|Multi-app kiosk  |Enabled |Enabled<sup>2</sup> |Available<sup>2</sup> |Available<sup>2</sup> |Available<sup>2, 3</sup>  |Enabled<sup>1</sup> |

> <sup>1</sup> Voice commands that relate to disabled features do not function.  
> <sup>2</sup> For more information about how to configure these features, see [Select kiosk apps](#select-kiosk-apps).  
> <sup>3</sup> Even if Cortana is disabled, the built-in voice commands are enabled.

The following table lists the user support features of the different kiosk modes.

| &nbsp; |Supported user types | Automatic sign-in | Multiple access levels |
| --- | --- | --- | --- |
|Single-app kiosk |Managed Service Account (MSA) in Azure Active Directory (AAD) or local account |Yes |No |
|Multi-app kiosk |AAD account |No |Yes |

For examples of how to use these capabilities, see the following table.

|Use a single-app kiosk for: |Use a multi-app kiosk for: |
| --- | --- |
|A device that runs only a guide for new hires. |A device that runs both guides and Remote Assist for a range of employees. |
|A device that runs only a custom app. |A device that functions as a kiosk for the majority of users (running only a custom app), but functions as a normal device for a specific group of users. |

### Plan kiosk apps

For general information about selecting kiosk apps, see [Guidelines for choosing an app for assigned access (kiosk mode)](https://docs.microsoft.com/windows/configuration/guidelines-for-assigned-access-app).

If you use the Windows Device Portal to configure a single-app kiosk, you select the app during the setup process.  

If you use an MDM system or a provisioning package to configure kiosk mode, you use the [AssignedAccess Configuration Service Provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/assignedaccess-csp) to specify applications. The CSP uses [Application User Model IDs (AUMIDs)](https://docs.microsoft.com/windows/configuration/find-the-application-user-model-id-of-an-installed-app) to identify applications. The following table lists the AUMIDs of some in-box applications that you can use in a multi-app kiosk.

> [!CAUTION]
> You cannot select the Shell app as a kiosk app. In addition, we recommend that you do **not** select the Microsoft Edge, Microsoft Store, or the File Explorer app as kiosk apps.  

| App Name                   | AUMID                                                                            |
|----------------------------|----------------------------------------------------------------------------------|
| 3D Viewer                  | Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer            |
| Calendar                   | microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar |
| Camera<sup>1, 2</sup>         | HoloCamera_cw5n1h2txyewy!HoloCamera                                              |
| Cortana<sup>3</sup>        | Microsoft.549981C3F5F10_8wekyb3d8bbwe!App                                        |
| Device Picker              | HoloDevicesFlow_cw5n1h2txyewy!HoloDevicesFlow                                    |
| Dynamics 365 Guides        | Microsoft.Dynamics365.Guides_8wekyb3d8bbwe!MicrosoftGuides                       |
| Dynamics 365 Remote Assist | Microsoft.MicrosoftRemoteAssist_8wekyb3d8bbwe!Microsoft.RemoteAssist             |
| Feedback Hub               | Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe!App                                   |
| Mail                       | c5e2524a-ea46-4f67-841f-6a9465d9d515_cw5n1h2txyewy!App                           |
| Miracast<sup>4</sup>       |                                   |
| Movies & TV                | Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo                            |
| OneDrive                   | microsoft.microsoftskydrive_8wekyb3d8bbwe!App                                    |
| Photos                     | Microsoft.Windows.Photos_8wekyb3d8bbwe!App                                       |
| Settings                   | HolographicSystemSettings_cw5n1h2txyewy!App                                      |
| Tips                       | Microsoft.HoloLensTips_8wekyb3d8bbwe!HoloLensTips                                |

> <sup>1</sup> To enable photo or video capture, you have to enable the Camera app as a kiosk app.  
> <sup>2</sup> When you enable the Camera app, be aware of the following:
> - The Quick Actions menu includes the Photo and Video buttons.
> - You should also enable an app that can interact with or retrieve pictures (such as Photos, Mail, or OneDrive).  
>  
> <sup>3</sup> Even if you do not enable Cortana as a kiosk app, built-in voice commands are enabled. However, commands that are related to disabled features have no effect.
> <sup>4</sup> To enable Miracast as a kiosk app, enable the Camera app and the Device Picker app.

### Plan user and device groups

In an MDM environment, you use user groups and device groups to manage device configurations and user access. For a full discussion of the roles of user groups and device groups in Intune, see [Assign user and device profiles in Microsoft Intune: User groups vs. device groups](https://docs.microsoft.com/intune/configuration/device-profile-assign).

In short, you assign kiosk configuration profiles to device groups, and you configure user groups (sometimes called user logon types) to determine which users can use the kiosk devices. If a user signs in by using an account that is not included in the appropriate group, that user does not have a kiosk experience. Similarly, if a device does not belong to a device group that has an assigned kiosk configuration, that device does not provide a kiosk experience for any user.

#### User-dependent experiences

When you configure a HoloLens device as a single-app kiosk, all of the users who sign on to that device see the kiosk experience. Users who do not belong to an appropriately configured user group cannot use the device.

When you configure a HoloLens device as a multi-app kiosk, the device can provide a kiosk experience to one group of users and a non-kiosk experience to another group of users. In other words, it can function as a kiosk or as a normal HoloLens device, depending on who signs in.

#### Profile conflicts

If two or more kiosk configuration profiles target the same device, they conflict. In the case of Intune-managed devices, Intune does not apply any of the conflicting profiles.

Other types of profiles and policies, such as device restrictions that are not related to the kiosk configuration profile, do not conflict with the kiosk configuration profile.

#### Examples of how to use groups

- You use a single group for both devices and users. One device and users A, B, and C are members of this group. No matter which user signs on to the device first (and goes through the Out-of-Box Experience, or OOBE), the kiosk configuration deploys to the device. Users A, B, and C can all sign in to the device and get the kiosk experience.

- You use a device group and a user group. Users A, B, and C are members of the device group. Users B and C are also members of the user group (user A is not a member). No matter which user signs on to the device first, the kiosk configuration deploys to the device. However, after that the user experiences differ as follows:  

  - Users B and C can sign in to the device, and they get the kiosk experience.
  - User A can sign in to the device, but does not get the kiosk experience. If the device is a multi-app kiosk, user A can use the device as a typical non-kiosk device.

- You contract devices out to two different vendors who need different kiosk experiences. Each vendor's devices belong to a unique device group. You create a different kiosk configuration profile for each vendor, and assign each vendor's profile to its device group.  
   
  You use a single user group that includes users from both vendors. As a result, any user can sign in to any device and get a kiosk experience. The specific kiosk experience the user gets depends on the vendor that is associated with the device.

### Select a deployment method


While Kiosk mode adds several restrictions, we suggest also considering additional policies such as turning off USB connectivity, or checking your flight ring settings to set when automatic updates occur as to not happen during business hours.


What are you deploying:

- Single-app kiosk
- Simple multi-app kiosk
- Fully-customized multi-app kiosk

There are three methods that you can use to configure the device as a kiosk:

- You can use [Microsoft Intune or other mobile device management (MDM) service](#set-up-kiosk-mode-by-using-microsoft-intune-or-mdm) to configure single-app and multi-app kiosks.

- You can [use a provisioning package](#set-up-kiosk-mode-by-using-a-provisioning-package) to configure single-app and multi-app kiosks.

- You can [use the Windows Device Portal](#set-up-kiosk-mode-by-using-the-windows-device-portal) to configure single-app kiosks.

   > [!NOTE]  
   > Because this method requires that developer mode be enabled on the device, we recommend that you use it only for demonstrations.

The following table lists the capabilities and benefits of each of the three deployment methods.

| &nbsp; |Deploy by using Windows Device Portal |Deploy by using a provisioning package |Deploy by using MDM |
| --------------------------- | ------------- | -------------------- | ---- |
|Deploy single-app kiosks   | Yes           | Yes                  | Yes  |
|Deploy multi-app kiosks    | No            | Yes                  | Yes  |
|Deploy to local devices only | Yes           | Yes                  | No   |
|Deploy by using developer mode |Required       | Not required            | Not required   |
|Deploy by using Azure Active Directory (AAD)  | Not required            | Not required                   | Required  |
|Deploy automatically      | No            | No                   | Yes  |
|Deployment speed            | Fastest       | Fast                 | Slow |
|Deploy at scale | Not recommended    | Not recommended        | Recommended |


For more information on settings for both modes of Kiosk visit [here](https://docs.microsoft.com/intune/configuration/kiosk-settings-holographic).
[Windows Holographic for Business device settings to run as a kiosk in Intune](https://docs.microsoft.com/mem/intune/configuration/kiosk-settings-holographic)

[Windows 10 and Windows Holographic for Business device settings to run as a dedicated kiosk using Intune](https://docs.microsoft.com/mem/intune/configuration/kiosk-settings)

### Create a kiosk configuration XML file

Follow [the instructions for creating a kiosk configuration XML file for desktop](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps#configure-a-kiosk-using-a-provisioning-package), with the following exceptions:

- Do not include Classic Windows applications (Win32) since they aren't supported on HoloLens.
- Use the [placeholder Start XML](#start-layout-for-hololens) for HoloLens.

#### Add guest access to the kiosk configuration (optional)

In the [Configs section of the XML file](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps#configs), you can configure a special group named **Visitor** to allow guests to use the kiosk. When the kiosk is configured with the **Visitor** special group, a "**Guest**" option is added to the sign-in page. The **Guest** account does not require a password, and any data associated with the account is deleted when the account signs out.

Use the following snippet in your kiosk configuration XML to enable the **Guest** account:

```xml
<Configs>
  <Config>  
    <SpecialGroup Name="Visitor" />  
    <DefaultProfile Id="enter a profile ID"/>  
  </Config>  
</Configs>  
```

## Start layout for HoloLens

If you use [MDM, Microsoft Intune](#set-up-kiosk-mode-by-using-microsoft-intune-or-mdm), or a [provisioning package](#set-up-kiosk-mode-by-using-a-provisioning-package) to configure a multi-app kiosk, the procedure requires a Start layout. Start layout customization isn't supported in Holographic for Business, so you'll need to use a placeholder Start layout.

> [!NOTE]  
> Because a single-app kiosk launches the kiosk app when a user signs in, there is no Start screen displayed.

### Start layout file for MDM (Intune and others)

Save the following sample as an XML file. You can use this file when you configure the multi-app kiosk in Microsoft Intune (or in another MDM service that provides a kiosk profile).

> [!NOTE]
> If you need to use a custom setting and full XML configuration to set up a kiosk in your MDM service, use the [Start layout instructions for a provisioning package](#start-layout-for-a-provisioning-package).

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

### Create a start layout for a customized multi-app kiosk

You will [create an XML file](#set-up-kiosk-mode-by-using-a-provisioning-package) to define the kiosk configuration to be included in a provisioning package. Use the following sample in the `StartLayout` section of your XML file.

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

## Set up kiosk mode by using Microsoft Intune or MDM

To set up kiosk mode by using Microsoft Intune or another MDM system, follow these steps.

1. [Create a device configuration policy](#create-a-device-configuration-policy).
1. Select the settings that you want to see in your kiosk.
   - [Configure the settings for a single-app kiosk](#configure-the-settings-for-a-single-app-kiosk).
   - [Configure the settings for a multi-app kiosk](#configure-the-settings-for-a-multi-app-kiosk).
1. [Assign the policy to the group to receive the policy](#assign-the-policy-to-the-group-to-receive-the-policy).
1. Set up the device.
   - [Set up a single-app kiosk](#set-up-a-single-app-kiosk).
   - [Set up a multi-app kiosk](#set-up-a-multi-app-kiosk).

### [MDM] 1. Create a device configuration policy

1. Navigate to https://portal.azure.com/ and sign in to your Intune administrator account.
1. Select **Microsoft Intune** > **Device configuration - Profiles** > **Create profile**
1. Walk through the steps setting a name, **Platform** as **Windows 10 and later**, and **Profile** type as **Kiosk**.

Your next settings after this will be different depending on if you pick Single app kiosk or Multi app kiosk.

For full details creating a device profile for Kiosk mode check out [Kiosk settings](https://docs.microsoft.com/intune/configuration/kiosk-settings).

### Select the settings that you want to see in your kiosk

#### [MDM] 2. Configure the settings for a single-app kiosk

Select **Single-app kiosk**, then select **Local user account**. You'll need to enter either the name of your local user, or your Microsoft Account you intend to be logged onto the device.
Finally you'll select the one app you want to be used in your kiosk. Ideally this should be a store app.
For full details visit [here](https://docs.microsoft.com/intune/configuration/kiosk-settings-holographic#single-full-screen-app-kiosks).

#### [MDM] 2. Configure the settings for a multi-app kiosk

Additional information:

- For HoloLens devices that are managed by Microsoft Intune, directions can be found [here](hololens-commercial-infrastructure.md#how-to-configure-kiosk-mode-using-microsoft-intune).

- For other MDM services, check your provider's documentation for instructions. If you need to use a custom setting and full XML configuration to set up a kiosk in your MDM service, [create an XML file that defines the kiosk configuration](#create-a-kiosk-configuration-xml-file), and make sure to include the [Start layout](#start-layout-for-a-provisioning-package) in the XML file.  

**Target Windows 10 in S mode devices**: Choose **No**. S mode isn't supported on Windows Holographic for Business.
For **User logon type**: Add one or more user accounts that can use the apps you add. Your options that work with Windows Holographic are: **Azure AD user or group** or **HoloLens visitor**.

It's important that the group or groups you choose includes users you want to use the Kiosk, if a user signs in with an account not included in this list  they will not have a Kiosk experience.

Now you choose which Apps to include in your kiosk. You may choose to add just one or add many.

To choose an app you've uploaded as a **Line of business app** choose the **Add store app** option. You many also choose to add an app via it's **Application user model ID** by selecting **Add by AUMID**.
In-box apps you may wish to use are:

| App Name                   | AUMID                                                                            |
|----------------------------|----------------------------------------------------------------------------------|
| 3D Viewer                  | Microsoft.Microsoft3DViewer_8wekyb3d8bbwe!Microsoft.Microsoft3DViewer            |
| Calendar                   | microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar |
| Cortana                    | Microsoft.549981C3F5F10_8wekyb3d8bbwe!App                                        |
| Dynamics 365 Guides        | Microsoft.Dynamics365.Guides_8wekyb3d8bbwe!MicrosoftGuides                       |
| Dynamics 365 Remote Assist | Microsoft.MicrosoftRemoteAssist_8wekyb3d8bbwe!Microsoft.RemoteAssist             |
| Feedback Hub               | Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe!App                                   |
| File Explorer              | microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail     |
| Mail                       | c5e2524a-ea46-4f67-841f-6a9465d9d515_cw5n1h2txyewy!App                           |
| Microsoft Edge             | Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge                              |
| Microsoft Store            | Microsoft.WindowsStore_8wekyb3d8bbwe!App                                         |
| Movies & TV                | Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo                            |
| OneDrive                   | microsoft.microsoftskydrive_8wekyb3d8bbwe!App                                    |
| Photos                     | Microsoft.Windows.Photos_8wekyb3d8bbwe!App                                       |
| Settings                   | HolographicSystemSettings_cw5n1h2txyewy!App                                      |
| Tips                       | Microsoft.HoloLensTips_8wekyb3d8bbwe!HoloLensTips                                |
| Camera                     | HoloCamera_cw5n1h2txyewy!HoloCamera                                              |
| Device Picker              | HoloDevicesFlow_cw5n1h2txyewy!HoloDevicesFlow                                    |

For more information on settings for both modes of Kiosk visit [here](https://docs.microsoft.com/intune/configuration/kiosk-settings-holographic).

### [MDM] 3. Assign the policy to the group to receive the policy

Once you have created and saved your Kiosk mode policy you must assign it to the group(s) that you want it deployed to, or your devices will never receive it.

Click assignments and add the group(s) that you want the Kiosk mode policy deployed to.

> [!IMPORTANT]  
> If two more or more different kiosk polices target a device they will conflict and the device will receive neither. Other policies such as device restrictions do not conflict with Kiosk mode or additional device restrictions.

For more information on group type, and group assignments please visit [here](https://docs.microsoft.com/intune/configuration/device-profile-assign).

There is an important distinction between the **User logon type** and the **Assignments**. Assignments is how the deployment of the Kiosk to a device is determined. Once a Kiosk policy is on the device, it uses the User logon type to determine which users should be using the Kiosk.

**Examples:**

- You have a single group that you use for both logon type and assignments. Users A B and C are in both groups. No matter which user the device is first set up for they will join the tenant in this group and the kiosk policy will deploy. Also each user is in the group used for logon type so users A B and C will all experience the Kiosk.

- You have an assignment group with users A, B and C in it. The group used for logon type is different with users B and C. Even if user A sets up the device and joins the tenant with the device the Kiosk policy will still deploy. Users B and C will still be logged in to the Kiosk, but user A can still log in if troubleshooting, changing of settings or any other need for full access to windows is needed.

- You have devices you contract out to two different vendors. Instead of user groups you have device groups. Each device group needs a different Kiosk. Those devices when joined receive policy for their own respective Kiosk. The logon user group may include users from both sites, and thus each regional area's device would allow kiosks for both sets of users.

### Set up the device

Now it's time to set up the device to both receive the policy and log into the account the policy has enabled for kiosk mode.

#### [MDM] 4. Set up a single-app kiosk

Since Single-app kiosk mode targets a local user or Microsoft account you need to take a few extra steps to [enroll the HoloLens in MDM](hololens-enroll-mdm.md), but sign in will be easy and can be automatic.

During OOBE sign into your **Microsoft Account** specified as a **Logon User Account**.  

Then enroll the device so that your **device is enrolled in a group** for a group selected under the Kiosk mode policy's **assignment**.  

Give your store app a short amount time to download as well as policy to be applied, once it is restart the device. Once your account is signed in your Kiosk mode will be enabled and your app should automatically launch.  

If you're not seeing your Kiosk mode yet, make sure to [check the assignment status](https://docs.microsoft.com/intune/configuration/device-profile-monitor).

#### [MDM] 4. Set up a multi-app kiosk

For multi app Kiosk you'll be using a device that you Azure AD join to your tenant during OOBE.  

If you're targeting a user group. you'll want to sign in to an account that is a member of a group that's also a group that the Kiosk is assigned to.

Once you've completed OOBE, if you have apps you need to manually install via sideloading or the Microsoft store please do so. If your apps are going to install automatically, such as being a [required app](https://docs.microsoft.com/mem/intune/apps/apps-deploy#assign-an-app) for the same group that the Kiosk mode is assigned to, then it will become a part of your kiosk even if you enter the kiosk before it finishes downloading.

To enable Kiosk mode simply **sign out** of your account and **sign in** to a profile that is a member of a group targeted by the Logon user account setting. (This may be the same user.)

If you're not seeing your Kiosk mode yet, make sure to [check the assignment status](https://docs.microsoft.com/intune/configuration/device-profile-monitor).



## Use a provisioning package to set up a single-app or muti-app kiosk

As part of creating your Provisioning package, you'll need to create a [start layout](#start-layout-for-hololens).

To set up kiosk mode by using a provisioning package, follow these steps.

1. [Create an XML file that defines the kiosk configuration.](#create-a-kiosk-configuration-xml-file)
2. [Add the XML file to a provisioning package.](#add-the-kiosk-configuration-xml-file-to-a-provisioning-package)
3. [Apply the provisioning package to HoloLens.](#apply-the-provisioning-package-to-hololens)

### [PP] 1. Create a kiosk configuration XML file

Follow [the instructions for creating a kiosk configuration XML file for desktop](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps#configure-a-kiosk-using-a-provisioning-package), with the following exceptions:

- Do not include Classic Windows applications (Win32) since they aren't supported on HoloLens.
- Use the [placeholder Start XML](#start-layout-for-hololens) for HoloLens.

#### Add guest access to the kiosk configuration (optional)

In the [Configs section of the XML file](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps#configs), you can configure a special group named **Visitor** to allow guests to use the kiosk. When the kiosk is configured with the **Visitor** special group, a "**Guest**" option is added to the sign-in page. The **Guest** account does not require a password, and any data associated with the account is deleted when the account signs out.

Use the following snippet in your kiosk configuration XML to enable the **Guest** account:

```xml
<Configs>
  <Config>  
    <SpecialGroup Name="Visitor" />  
    <DefaultProfile Id="enter a profile ID"/>  
  </Config>  
</Configs>  
```

### [PP] 2. Add the kiosk configuration XML file to a provisioning package

1. Open [Windows Configuration Designer](https://www.microsoft.com/store/apps/9nblggh4tx22).
2. Choose **Advanced provisioning**.
3. Name your project, and click **Next**.
4. Choose **Windows 10 Holographic** and click **Next**.
5. Select **Finish**. The workspace for your package opens.
6. Expand **Runtime settings** &gt; **AssignedAccess** &gt; **MultiAppAssignedAccessSettings**.
7. In the center pane, click **Browse** to locate and select the kiosk configuration XML file that you created.

   ![Screenshot of the MultiAppAssignedAccessSettings field in Windows Configuration Designer](images/multiappassignedaccesssettings.png)

8. (**Optional**: If you want to apply the provisioning package after device initial setup and there is an admin user already available on the kiosk device, skip this step.) Create an admin user account in **Runtime settings** &gt; **Accounts** &gt; **Users**. Provide a **UserName** and **Password**, and select **UserGroup** as **Administrators**. With this account, you can view the provisioning status and logs if needed.  
9. (**Optional**: If you already have a non-admin account on the kiosk device, skip this step.) Create a local standard user account in **Runtime settings** &gt; **Accounts** &gt; **Users**. Make sure the **UserName** is the same as the account that you specify in the configuration XML. Select **UserGroup** as **Standard Users**.
10. On the **File** menu, select **Save.**
11. On the **Export** menu, select **Provisioning package**.
12. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

13. On the **Provisioning package security** page, do not select **Enable package encryption** or provisioning will fail on HoloLens. You can choose to enable package signing.

      - **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by clicking **Browse** and choosing the certificate you want to use to sign the package.

14. Click **Next** to specify the output location where you want the provisioning package to go when it's built. By default, Windows Configuration Designer uses the project folder as the output location. Optionally, you can click **Browse** to change the default output location.

15. Click **Next**.

16. Click **Build** to start building the package. The provisioning package doesn't take long to build. The project information is displayed in the build page and the progress bar indicates the build status.

### [PP] 3. Apply the provisioning package to HoloLens

You can initially [apply a provisioning package to HoloLens during setup](hololens-provisioning.md#apply-a-provisioning-package-to-hololens-during-setup).

You can also [apply a provisioning package to HoloLens after setup](hololens-provisioning.md#4-apply-a-provisioning-package-to-hololens-after-setup).

## Use the Windows Device Portal to set up a single-app kiosk

To set up kiosk mode by using the Windows Device Portal, follow these steps.

1. [Set up the HoloLens to use the Windows Device Portal](https://developer.microsoft.com/windows/mixed-reality/using_the_windows_device_portal#setting_up_hololens_to_use_windows_device_portal). The Device Portal is a web server on your HoloLens that you can connect to from a web browser on your PC.

    > [!IMPORTANT]
    > When you set up HoloLens to use the Device Portal, you must enable **Developer Mode** on the device. **Developer Mode** on a device that has Windows Holographic for Business enables side-loading of apps, which risks the installation of apps that have not been certified by the Microsoft Store. Administrators can block the ability to enable **Developer Mode** using the **ApplicationManagement/AllowDeveloper Unlock** setting in the [Policy CSP](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider). [Learn more about Developer Mode.](https://docs.microsoft.com/windows/uwp/get-started/enable-your-device-for-development#developer-mode)
    
2. On a PC, connect to the HoloLens using [Wi-Fi](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal#connecting_over_wi-fi) or [USB](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal#connecting_over_usb).

3. [Create a user name and password](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal#creating_a_username_and_password) if this is the first time you connect to the Windows Device Portal, or enter the user name and password that you previously set up.

    > [!TIP]
    > If you see a certificate error in the browser, follow [these troubleshooting steps](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal#security_certificate).

4. In the Windows Device Portal, click **Kiosk Mode**.

    ![Kiosk Mode](images/kiosk.png)

    > [!NOTE]
    > The kiosk mode option will be available if the device has [Windows Holographic for Business](hololens1-upgrade-enterprise.md).

5. Select **Enable Kiosk Mode**, select an app to run when the device starts, and then select **Save**.

6. Reboot the HoloLens. If you still have your Device Portal page open you can use the **Power** option in the top right and click **Restart.**




## More information

Watch how to configure a kiosk in a provisioning package.
> [!VIDEO https://www.microsoft.com/videoplayer/embed/fa125d0f-77e4-4f64-b03e-d634a4926884?autoplay=false]
