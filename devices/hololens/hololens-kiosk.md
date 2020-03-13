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
manager: dansimp
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Set up HoloLens as a kiosk for specific applications

A convenient feature many choose to use as a solution for focusing on business apps, or using to show an app demo is Kiosk mode. There are two different types of kiosks, and three methods of deploying them.

- All HoloLens 2 devices are Kiosk-mode capable.
- In order to use Kiosk Mode with HoloLens (1st gen) you'll need to be updated to at least Windows 10, version 1803 which released April 2018. If you have recovered your HoloLens (1st gen) device with Windows Device Recovery Tool using the default build, or have taken the most recent updates then you are ready.

## Select a kiosk mode

When HoloLens is configured as a multi-app kiosk, only the allowed apps are available to the user. The benefit of a multi-app kiosk, or fixed-purpose device, is to provide an easy-to-understand experience for individuals by putting in front of them only the things they need to use, and removing from their view the things they don't need to access.

Single-app kiosk mode starts the specified app when the user signs in, and restricts the user's ability to launch new apps or change the running app. When single-app kiosk mode is enabled for HoloLens, the [start gestures](hololens2-basic-usage.md#start-gesture) (including [bloom](hololens1-basic-usage.md) on HoloLens (1st gen)) and Cortana are disabled, and placed apps aren't shown in the user's surroundings.

> [!WARNING]  
> The assigned access feature which enables kiosk mode is intended for corporate-owned fixed-purpose devices. When the multi-app assigned access configuration is applied on the device, certain policies are enforced system-wide, and will impact other users on the device. Deleting the multi-app configuration will remove the assigned access lockdown profiles associated with the users, but it cannot revert all [the enforced policies](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps#policies-set-by-multi-app-kiosk-configuration). A factory reset is needed to clear all the policies enforced via assigned access.
>  
> Be aware that voice commands are enabled for kiosk mode configured in Microsoft Intune or provisioning packages, even if the Cortana app is not selected as a kiosk app.  

The following table lists the device capabilities in the different kiosk modes.

| &nbsp; |Start gesture/pins panel |Quick Actions menu |Camera and video |Miracast |Supported user types | Auto sign-in | Can distinguish different users to use Kiosk mode or full access |
| --- | --- | --- | --- | --- | --- | --- | --- |
|Single-app kiosk |No |No |No* |No |MSA or local |Yes |No |
|Multi-app kiosk |Yes |Yes* |Yes* |Yes* |AAD |No |Yes |

While camera and video voice commands and UI are disabled by default the button commands can still be used.  

To enable the camera, device picker, or Miracast on the system menu include the AUMIDs below in your Multi-app kiosk.

> [!NOTE]  
> Use the Application User Model ID (AUMID) to allow apps in your kiosk configuration. The Camera app AUMID is `HoloCamera_cw5n1h2txyewy!HoloCamera`. The device picker app AUMID is `HoloDevicesFlow_cw5n1h2txyewy!HoloDevicesFlow`.

The [AssignedAccess Configuration Service Provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/assignedaccess-csp) enables kiosk configuration.  

One device can easily be set up to have one kiosk set up for it. If you opt for multi-app kiosk then not you don't need to require all users to use the Kiosk.  

Examples scenarios of when to use which kiosk:

- A device dedicated to Guides to help new hires: Single-app kiosk
- A device that has both Guides and Remote Assist for a range of employees: Multi-app kiosk
- You have a custom app and only allow access to it: Single-app kiosk
- You want a device the majority of your users can only use custom App, but that one user group can use your custom app, Remote Assist, Feedback Hub, and Settings if needed: Multi-app Kiosk mode (With only your custom app in the Kiosk, and the one user group has full access to Windows Holographic.)

## Select a deployment method

There are three methods that you can use to configure the device as a kiosk:

- You can use [Microsoft Intune or other mobile device management (MDM) service](#set-up-kiosk-mode-by-using-microsoft-intune-or-mdm) to configure single-app and multi-app kiosks.
- You can [use a provisioning package](#set-up-kiosk-mode-using-a-provisioning-package) to configure single-app and multi-app kiosks.
- You can [use the Windows Device Portal](#set-up-kiosk-mode-using-the-windows-device-portal) to configure single-app kiosks. This method is recommended only for demonstrations, as it requires that developer mode be enabled on the device.

|                              | Device Portal | Provisioning Package | MDM  |
|------------------------------|---------------|----------------------|------|
| Single-app kiosk available   | Yes           | Yes                  | Yes  |
| Multi-app kiosk available    | No            | Yes                  | Yes  |
| Need device locally to apply | Yes           | Yes                  | No   |
| Need developer mode          | Yes           | No                   | No   |
| Need AAD                     | No            | No                   | Yes  |
| Automatically deploy         | No            | No                   | Yes  |
| Speed                        | Fastest       | Fast                 | Slow |
| Recommended for scale        | No            | No                   | Yes  |

## Set up kiosk mode by using Microsoft Intune or MDM

Process:

1. [Create a device configuration policy](#create-a-device-configuration-policy).
1. Select the settings that you want to see in your kiosk.
   - [Configure the settings for a single-app kiosk](#configure-the-settings-for-a-single-app-kiosk).
   - [Configure the settings for a multi-app kiosk](#configure-the-settings-for-a-multi-app-kiosk).
1. [Assign the policy to the group to receive the policy](#assign-the-policy-to-the-group-to-receive-the-policy).
1. Set up the device.
   - [Set up a single-app kiosk](#set-up-a-single-app-kiosk).
   - [Set up a multi-app kiosk](#set-up-a-multi-app-kiosk).

### Create a device configuration policy

1. Navigate to https://portal.azure.com/ and sign in to your Intune administrator account. 
1. Select **Microsoft Intune** > **Device configuration - Profiles** > **Create profile**
1. Walk through the steps setting a name, **Platform** as **Windows 10 and later**, and **Profile** type as **Kiosk**.

Your next settings after this will be different depending on if you pick Single app kiosk or Multi app kiosk.

For full details creating a device profile for Kiosk mode check out [Kiosk settings]( https://docs.microsoft.com/intune/configuration/kiosk-settings).

### Select the settings that you want to see in your kiosk

#### Configure the settings for a single-app kiosk

Select **Single-app kiosk**, then select **Local user account**. You'll need to enter either the name of your local user, or your Microsoft Account you intend to be logged onto the device.
Finally you'll select the one app you want to be used in your kiosk. Ideally this should be a store app.
For full details visit [here](https://docs.microsoft.com/intune/configuration/kiosk-settings-holographic#single-full-screen-app-kiosks).

#### Configure the settings for a multi-app kiosk

**Target Windows 10 in S mode devices**: Choose **No**. S mode isn't supported on Windows Holographic for Business.
For **User logon type**: Add one or more user accounts that can use the apps you add. Your options that work with Windows Holographic are: **Azure AD user or group** or **HoloLens visitor**.

It's important that the group or groups you choose includes users you want to use the Kiosk, if a user signs in with an account not included in this list  they will not have a Kiosk experience.

Now you choose which Apps to include in your kiosk. You may choose to add just one or add many. 

To choose an app you've uploaded as a **Line of business app** choose the **Add store app** option. You many also choose to add an app via it's **Application user model ID** by selecting **Add by AUMID**. 
Some common in-box apps you may wish to use are:

| App Name      | AUMID                                                                |
|---------------|----------------------------------------------------------------------|
| Remote Assist | Microsoft.MicrosoftRemoteAssist_8wekyb3d8bbwe!Microsoft.RemoteAssist |
| Guides        | Microsoft.Dynamics365.Guides_8wekyb3d8bbwe!MicrosoftGuides           |
| Camera        | HoloCamera_cw5n1h2txyewy!HoloCamera                                  |
| Device picker | HoloDevicesFlow_cw5n1h2txyewy!HoloDevicesFlow                        |
| Feedback Hub  | Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe!App                       |

For more information on settings for both modes of Kiosk visit [here](https://docs.microsoft.com/intune/configuration/kiosk-settings-holographic).

## Assign the policy to the group to receive the policy

Once you have created and saved your Kiosk mode policy you must assign it to the group(s) that you want it deployed to, or your devices will never receive it.
Click assignments and add the group(s) that you want the Kiosk mode policy deployed to.

> [!IMPORTANT]  
> If two more or more different kiosk polices target a device they will conflict and the device will receive neither. Other policies such as device restrictions do not conflict with Kiosk mode or additional device restrictions. 

For more information on group type, and group assignments please visit [here](https://docs.microsoft.com/intune/configuration/device-profile-assign).

There is an important distinction between the **User logon type** and the **Assignments**. Assignments is how the deployment of the Kiosk to a device is determined. Once a Kiosk policy is on the device, it uses the User logon type to determine which users should be using the Kiosk.

**Examples:**

- You have a single group that you use for both logon type and assignments. Users A B and C are in both groups. No matter which user the device is first set up for they will join the tenant in this group and the kiosk policy will deploy. Also each user is in the logon group so users A B and C will all experience the Kiosk.

- You have an assignment group with users A, B and C in it. The logon group is different with users B and C. Even if user A sets up the device and joins the tenant with the device the Kiosk policy will still deploy. Users B and C will still be logged in to the Kiosk, but user A can still log in if troubleshooting, changing of settings or any other need for full access to windows is needed.

- You have devices you contract out to two different vendors. Instead of user groups you have device groups. Each device group needs a different Kiosk. Those devices when joined receive policy for their own respective Kiosk. The logon user group may include users from both sites, and thus each regional area's device would allow kiosks for both sets of users. 

## Set up the device

Now it's time to set up the device to both receive the policy and log into the account the policy has enabled for kiosk mode.

### Set up a single-app kiosk

Since Single-app kiosk mode targets a local user or Microsoft account you need to take a few extra steps to [enroll the HoloLens in MDM](hololens-enroll-mdm.md), but sign in will be easy and can be automatic. 

During OOBE sign into your **Microsoft Account** specified as a **Logon User Account**.  

Then enroll the device so that your **device is enrolled in a group** for a group selected under the Kiosk mode policy's **assignment**.  

Give your store app a short amount time to download as well as policy to be applied, once it is restart the device. Once your account is signed in your Kiosk mode will be enabled and your app should automatically launch.  

If you're not seeing your Kiosk mode yet, make sure to [check the assignment status](https://docs.microsoft.com/intune/configuration/device-profile-monitor).

### Set up a multi-app kiosk

For multi app Kiosk you'll be using a device that you Azure AD join to your tenant during OOBE.  

If you're targeting a user group. you'll want to sign in to an account that is a member of a group that's also a group that the Kiosk is assigned to.

Once you've completed OOBE, if you have apps you need to manually install via sideloading or the Microsoft store please do so. If your apps are going to install automatically, such as being a [required app](https://docs.microsoft.com/mem/intune/apps/apps-deploy#assign-an-app) for the same group that the Kiosk mode is assigned to, then it will become a part of your kiosk even if you enter the kiosk before it finishes downloading.

To enable Kiosk mode simply **sign out** of your account and **sign in** to a profile that is a member of a group targeted by the Logon user account setting. (This may be the same user.)

If you're not seeing your Kiosk mode yet, make sure to [check the assignment status](https://docs.microsoft.com/intune/configuration/device-profile-monitor).

Additional information:

For HoloLens devices that are managed by Microsoft Intune, directions can be found [here](hololens-commercial-infrastructure.md#how-to-configure-kiosk-mode-using-microsoft-intune).

For other MDM services, check your provider's documentation for instructions. If you need to use a custom setting and full XML configuration to set up a kiosk in your MDM service, [create an XML file that defines the kiosk configuration](#create-a-kiosk-configuration-xml-file), and make sure to include the [Start layout](#start-layout-for-a-provisioning-package) in the XML file.  

## Set up kiosk mode by using a provisioning package

As part of creating your Provisioning package, you'll need to create a [start layout](https://docs.microsoft.com/hololens/hololens-kiosk#start-layout-for-hololens).

Process:

1. [Create an XML file that defines the kiosk configuration.](#create-a-kiosk-configuration-xml-file)
2. [Add the XML file to a provisioning package.](#add-the-kiosk-configuration-xml-file-to-a-provisioning-package)
3. [Apply the provisioning package to HoloLens.](#apply-the-provisioning-package-to-hololens)

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

### Add the kiosk configuration XML file to a provisioning package

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

### Apply the provisioning package to HoloLens

You can initially [apply a provisioning package to HoloLens during setup](hololens-provisioning.md#apply-a-provisioning-package-to-hololens-during-setup).

You can also [apply a provisioning package to HoloLens after setup](hololens-provisioning.md#4-apply-a-provisioning-package-to-hololens-after-setup).

## Set up kiosk mode using the Windows Device Portal

1. [Set up the HoloLens to use the Windows Device Portal](https://developer.microsoft.com/windows/mixed-reality/using_the_windows_device_portal#setting_up_hololens_to_use_windows_device_portal). The Device Portal is a web server on your HoloLens that you can connect to from a web browser on your PC.

    > [!IMPORTANT]
    > When you set up HoloLens to use the Device Portal, you must enable **Developer Mode** on the device. **Developer Mode** on a device that has Windows Holographic for Business enables side-loading of apps, which risks the installation of apps that have not been certified by the Microsoft Store. Administrators can block the ability to enable **Developer Mode** using the **ApplicationManagement/AllowDeveloper Unlock** setting in the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx). [Learn more about Developer Mode.](https://msdn.microsoft.com/windows/uwp/get-started/enable-your-device-for-development#developer-mode)
  
2. On a PC, connect to the HoloLens using [Wi-Fi](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#connecting_over_wi-fi) or [USB](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#connecting_over_usb).

3. [Create a user name and password](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#creating_a_username_and_password) if this is the first time you connect to the Windows Device Portal, or enter the user name and password that you previously set up.

    > [!TIP]
    > If you see a certificate error in the browser, follow [these troubleshooting steps](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#security_certificate).

4. In the Windows Device Portal, click **Kiosk Mode**.

    ![Kiosk Mode](images/kiosk.png)

    > [!NOTE]
    > The kiosk mode option will be available if the device has [Windows Holographic for Business](hololens1-upgrade-enterprise.md).

5. Select **Enable Kiosk Mode**, choose an app to run when the device starts, and click **Save**.

6. Reboot the HoloLens. If you still have your Device Portal page open you can use the **Power** option in the top right and click **Restart.**

## Start layout for HoloLens

If you use [MDM, Microsoft Intune](#set-up-kiosk-mode-by-using-microsoft-intune-or-mdm), or a [provisioning package](#set-up-kiosk-mode-using-a-provisioning-package) to configure a multi-app kiosk, the procedure requires a Start layout. Start layout customization isn't supported in Holographic for Business, so you'll need to use a placeholder Start layout. 

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

### Start layout for a provisioning package

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

## Kiosk app recommendations

- You cannot select the Shell app as a kiosk app.
- We recommend that you do **not** select the Settings app, Microsoft Edge, Microsoft Store, or the File Explorer app as kiosk apps.
- You can select Cortana as a kiosk app.
- To enable photo or video capture, the HoloCamera app must be enabled as a kiosk app.
- While Kiosk mode adds several restrictions, we suggest also considering additional policies such as turning off USB connectivity, or checking your flight ring settings to set when automatic updates occur as to not happen during business hours.

## More information

Watch how to configure a kiosk in a provisioning package.
> [!VIDEO https://www.microsoft.com/videoplayer/embed/fa125d0f-77e4-4f64-b03e-d634a4926884?autoplay=false]
