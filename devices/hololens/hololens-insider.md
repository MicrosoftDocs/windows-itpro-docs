---
title: Insider preview for Microsoft HoloLens (HoloLens)
description: It’s simple to get started with Insider builds and to provide valuable feedback for our next major operating system update for HoloLens.
ms.prod: hololens
ms.sitesec: library
author: jdeckerms
ms.author: jdecker
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2018
---

# Insider preview for Microsoft HoloLens

Welcome to the latest Insider Preview builds for HoloLens!  It’s simple to get started and provide valuable feedback for our next major operating system update for HoloLens. 
 


<span id="get-insider" />
## How do I install the Insider builds? 
 
On a device running the Windows 10 April 2018 Update, go to **Settings -> Update & Security -> Windows Insider Program** and select **Get started**. Link the account you used to register as a Windows Insider. 

Then, select **Active development of Windows**, choose whether you’d like to receive **Fast** or **Slow** builds, and review the program terms. 

Select **Confirm -> Restart Now** to finish up. After your device has rebooted, go to **Settings -> Update & Security -> Check for updates** to get the latest build. 

## New features for HoloLens 
 
The latest Insider Preview (RS5) has arrived for all HoloLens customers! This latest flight is packed with improvements that have been introduced since the [last major release of HoloLens software in May 2018](https://docs.microsoft.com/windows/mixed-reality/release-notes). 

### For everyone 
 

Feature | Details  | Instructions 
--- | --- | ---
Stop video capture from the Start or quick actions menu | If you start video capture from the Start menu or quick actions menu, you’ll be able to stop recording from the same place. (Don’t forget, you can always do this with voice commands too.) | To start recording, select **Start > Video**. To stop recording, select **Start > Stop video**.
Project to a Miracast-enabled device | Project your HoloLens content to a nearby Surface device or TV/Monitor if using Microsoft Display adapter | On **Start**, select **Connect**. Select the device you want to project to. 
New notifications | View and respond to notification toasts on HoloLens, just like you do on a PC. | You’ll now see notifications from apps that provide them. Gaze to respond to or dismiss them (or if you’re in an immersive experience, use the bloom gesture).  
HoloLens overlays (file picker, keyboard, dialogs, etc.) | You’ll now see overlays such as the keyboard, dialogs, file picker, etc. when using immersive apps. | When you’re using an immersive app, input text, select a file from the file picker, or interact with dialogs without leaving the app. 
Visual feedback overlay UI for volume change | When you use the volume up/down buttons on your HoloLens you’ll see a visual display of the volume level. | Adjust the device volume using the volume up/down buttons located on the right arm of the HoloLens. Use the visual display to track the volume level. 
New UI for device boot | A loading indicator was added during the boot process to provide visual feedback that the system is loading. | Reboot your device to see the new loading indicator—it’s between the "Hello" message and the Windows boot logo. 
Share UX: Nearby Sharing | Addition of the Windows Nearby Sharing experience, allowing you to share a capture with a nearby Windows device. | Capture a photo or video on HoloLens (or use the share button from an app such as Microsoft Edge).  Select a nearby Windows device to share with. 
Share from Microsoft Edge | Share button is now available on Microsoft Edge windows on HoloLens. | In Microsoft Edge, select **Share**. Use the HoloLens share picker to share web content. 

### For developers 
 
- Support for Holographic [Camera Capture UI API](https://docs.microsoft.com/windows/uwp/audio-video-camera/capture-photos-and-video-with-cameracaptureui), which will let developers expose a way for users to seamlessly invoke camera or video capture from within their applications. For example, users can now capture and insert photo or video content directly within apps like Word.  
- Mixed Reality Capture has been improved to exclude hidden mesh from captures, which means videos captures by apps will no longer contain black corners around the content.  

### For commercial customers 


Feature | Details | Instructions 
--- | --- | ---
Enable post-setup provisioning | Can now apply a runtime provisioning package at any time using **Settings**. | On your PC:<br><br>1. Create a provisioning package as described at [Create a provisioning package for HoloLens using the HoloLens wizard](hololens-provisioning.md). <br>2. Connect the HoloLens device via USB to a PC. HoloLens will show up as a device in File Explorer on the PC. <br>3. Drag and drop the provisioning package to the Documents folder on the HoloLens. <br><br>On your HoloLens: <br><br>1. Go to **Settings > Accounts > Access work or school**. <br>2. In **Related Settings**, select **Add or remove a provisioning package**.<br>3. On the next page, select **Add a package** to launch the file picker and select your provisioning package. <br>**Note:** if the folder is empty, make sure you select **This Device** and select **Documents**.<br>After your package has been applied, it will show in the list of Installed packages. To view package details or to remove the package from the device, select the listed package. 
Assigned access with Azure AD groups | Flexibility to use Azure AD groups for configuration of Windows assigned access to set up single or multi-app kiosk configuration. | Prepare XML file to configure Assigned Access on PC:<br><br>1. In a text editor, open [the provided file AssignedAccessHoloLensConfiguration_AzureADGroup.xml](#xml).<br>2. Change the group ID to one available in your Azure AD tenant. You can find the group ID of an Azure Active Directory Group by either :<br>- following the steps at [Azure Active Directory version 2 cmdlets for group management](https://docs.microsoft.com/azure/active-directory/active-directory-accessmanagement-groups-settings-v2-cmdlets),<br>OR<br>- in the Azure portal, with the steps at [Manage the settings for a group in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-groups-settings-azure-portal).<br><br>**Note:** The sample configures the following apps: Skype, Learning, Feedback Hub, Flow, Camera, and Calibration. <br><br>Create provisioning package with WCD:<br><br>1. On a PC, follow the steps at [Create a provisioning package for HoloLens using the HoloLens wizard](hololens-provisioning.md) to create a provisioning package.<br>2. Ensure that you include the license file in **Set up device**.<br>3. Select **Switch to advanced editor** (bottom left), and **Yes** for warning prompt.<br>4. Expand the runtime settings selection in the **Available customizations** panel and select **AssignedAccess > MultiAppAssignedAccessSettings**.<br>5. In the middle panel, you should now see the setting displayed with documentation in the panel below. Browse to the XML you modified for Assigned Access.<br>6. On the **Export** menu, select **Provisioning package**. <br>**Warning:** If you encrypt the provisioning package, provisioning the HoloLens device will fail.<br>7. Select **Next** to specify the output location where you want the provisioning package to go once it's built.<br>8. Select **Next**, and then select **Build** to start building the package.<br>9. When the build completes, select **Finish**. <br><br>Apply the package to HoloLens: <br><br>1. Connect HoloLens via USB to a PC and start the device, but do not continue past the **Fit** page of OOBE (the first page with the blue box). HoloLens will show up as a device in File Explorer on the PC. <br>2. In File Explorer, drag and drop the provisioning package (.ppkg) onto the device storage.<br>3. Briefly press and release the **Volume Down** and **Power** buttons simultaneously again while on the fit page. <br>4. The device will ask you if you trust the package and would like to apply it. Confirm that you trust the package.<br>5. You will see whether the package was applied successfully or not. If it failed, you can fix your package and try again. If it succeeded, proceed with OOBE.<br><br>Enable assigned access on HoloLens: <br><br>1. After applying the provisioning package, during the **Account Setup** flows in OOBE, select **My work or school owns this** to set up your device with an Azure AD account. <br>**Note:** This account must not be in the group chosen for Assigned Access.<br>2. Once you reach the Shell, ensure the Skype app is installed either via your MDM environment or from the Store. <br>3. After the Skype app is installed, sign out. <br>4. On the sign-in screen, select the **Other User** option and enter an Azure AD account email address that belongs to the group chosen for Assigned Access. Then enter the password to sign in. You should now see this user with only the apps configured in the Assigned Access profile. 
PIN sign-in on profile switch from sign-in screen  | PIN sign-in is now available for **Other User**.  | When signing in as **Other User**, the PIN option is now available under **Sign-In options**. 
Sign in with Web Cred Provider using password | You can now select the Globe sign-in option to launch web sign-in with your password. Look for additional web sign-in methods coming in the future. | From the sign-in screen, select **Sign-In options** and select the Globe option to launch web sign-in. Enter your user name if needed, then your password. <br>**Note:** You can choose to bypass any PIN/Smartcard options when prompted during web sign-in.  
Read device hardware info through MDM so devices can be tracked by serial # | IT administrators can see and track HoloLens by device serial number in their MDM console. | Refer to your MDM documentation for feature availability, and for how to use your MDM console to view HoloLens device serial number. 
Set HoloLens device name through MDM (rename) |  IT administrators can see and rename HoloLens devices in their MDM console. | Refer to your MDM documentation for feature availability, and for how to use your MDM console to view and set your HoloLens device name (rename). 

### For international customers 
 

Feature | Details | Instructions 
--- | --- | ---
Localized Chinese and Japanese builds | Use HoloLens with localized user interface for Simplified Chinese or Japanese, including localized Pinyin keyboard, dictation, and voice commands. | See below.  

#### Installing the Chinese or Japanese versions of the Insider builds 
 
In order to switch to the Chinese or Japanese version of HoloLens, you’ll need to download the build for the language on a PC and then install it on your HoloLens using the Windows Device Recovery Tool (WDRT). 
 
>[!IMPORTANT] 
>Installing the Chinese or Japanese builds of HoloLens using WDRT will delete existing data, like personal files and settings, from your HoloLens. 
 
1. On a retail HoloLens device, [opt in to Insider Preview builds](#get-insider) to prepare your device for the RS5 Preview.   
2. On your PC, download and install [the Windows Device Recovery Tool (WDRT)](https://support.microsoft.com/help/12379). 
3. Download the package for the language you want to your PC:  [Simplified Chinese](https://aka.ms/hololenspreviewdownload-ch) or [Japanese](https://aka.ms/hololenspreviewdownload-jp).
4. When the download is finished, select **File Explorer > Downloads**. Right-click the zipped folder you just downloaded, and select **Extract all... > Extract** to unzip it. 
5. Connect your HoloLens to your PC using the micro-USB cable it came with. (Even if you've been using other cables to connect your HoloLens, this one works best.)  
6. The tool will automatically detect your HoloLens. Select the Microsoft HoloLens tile. 
7. On the next screen, select **Manual package selection** and choose the installation file contained in the folder you unzipped in step 4. (Look for a file with the extension “.ffu”.) 
8. Select **Install software** and follow the instructions to finish installing. 
9. Once the build is installed, HoloLens setup will start automatically. Put on the device and follow the setup directions. 
 
When you’re done with setup, go to **Settings -> Update & Security -> Windows Insider Program** and check that you’re configured to receive the latest preview builds.  The Chinese/Japanese version of HoloLens will be kept up-to-date with the latest preview builds via the Windows Insider Program the same way the English version is. 

## Note for language support

- You can’t change the system language between English, Japanese, and Chinese using the Settings app. Flashing a new build is the only supported way to change the device system language.
- While you can enter Simplified Chinese / Japanese text using the on-screen Pinyin keyboard, typing in Simplified Chinese / Japanese using a Bluetooth hardware keyboard is not supported at this time.  However, on Chinese/Japanese HoloLens, you can continue to use a BT keyboard to type in English (the ~ key on a hardware keyboard toggles the keyboard to type in English).

## Note for developers

You are welcome and encouraged to try developing your applications using this build of HoloLens.  Check out the [HoloLens Developer Documentation](https://developer.microsoft.com/windows/mixed-reality/development) to get started.  Those same instructions work with this latest build of HoloLens.  You can use the same builds of Unity and Visual Studio that you're already using for HoloLens development.

## Provide feedback and report issues

Please use [the Feedback Hub app](https://docs.microsoft.com/windows/mixed-reality/give-us-feedback) on your HoloLens or Windows 10 PC to provide feedback and report issues. Using Feedback Hub ensures that all necessary diagnostics information is included to help our engineers quickly debug and resolve the problem.  Issues with the Chinese and Japanese version of HoloLens should be reported the same way.

>[!NOTE]
>Be sure to accept the prompt that asks whether you’d like Feedback Hub to access your Documents folder (select **Yes** when prompted).
 
<span id="xml" />
## AssignedAccessHoloLensConfiguration_AzureADGroup.xml

Copy this sample XML to use for the [**Assigned access with Azure AD groups** feature](#for-commercial-customers).

```xml
<?xml version="1.0" encoding="utf-8" ?>
<!-- 
  This is a sample Assigned Access XML file. The Profile specifies which apps are allowed
  and their app IDs. An Assigned Access Config specifies the accounts or groups to which 
  a Profile is applicable. 
  
  !!! NOTE: Change the Name of the AzureActiveDirectoryGroup below to a valid object ID for a group in the tenant being tested.  !!!
  
  You can find the object ID of an Azure Active Directory Group by following the steps at 
  https://docs.microsoft.com/en-us/azure/active-directory/active-directory-accessmanagement-groups-settings-v2-cmdlets
  
  OR in the Azure portal with the steps at
  https://docs.microsoft.com/en-us/azure/active-directory/active-directory-groups-settings-azure-portal
  
-->
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config">
    <Profiles>
        <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">
            <AllAppsList>
                <AllowedApps>
                    <!-- Learning app -->
                    <App AppUserModelId="GGVLearning_cw5n1h2txyewy!GGVLearning" />
                    <!-- Calibration app -->
                    <App AppUserModelId="ViewCalibrationApp_cw5n1h2txyewy!ViewCalibrationApp" />
                    <!-- Feedback Hub -->
                    <App AppUserModelId="Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe!App" />
                    <!-- HoloSkype -->
                    <App AppUserModelId="Microsoft.SkypeApp_kzf8qxf38zg5c!App" />
                    <!-- HoloCamera -->
                    <App AppUserModelId="HoloCamera_cw5n1h2txyewy!App" />
                    <!-- HoloDevicesFlow -->
                    <App AppUserModelId="HoloDevicesFlow_cw5n1h2txyewy!App" />
                </AllowedApps>
            </AllAppsList>
            <!-- This section is required for parity with Desktop Assigned Access. It is not currently used on HoloLens -->
            <StartLayout>
                <![CDATA[<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
                      <LayoutOptions StartTileGroupCellWidth="6" />
                      <DefaultLayoutOverride>
                        <StartLayoutCollection>
                          <defaultlayout:StartLayout GroupCellWidth="6">
                            <start:Group Name="Life at a glance">
                              <start:Tile Size="2x2" Column="0" Row="0" AppUserModelID="Microsoft.SkypeApp_kzf8qxf38zg5c!App" />
                            </start:Group>
                          </defaultlayout:StartLayout>
                        </StartLayoutCollection>
                      </DefaultLayoutOverride>
                    </LayoutModificationTemplate>
                ]]>
            </StartLayout>
            <!-- This section is required for parity with Desktop Assigned Access. It is not currently used on HoloLens -->
            <Taskbar ShowTaskbar="true"/>
        </Profile>
    </Profiles>
    <Configs>
        <!-- IMPORTANT: Replace the group ID here with a valid object ID for a group in the tenant being tested that you want to 
        be enabled for assigned access. Refer to https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/groups-settings-v2-cmdlets on how to determine Object-Id for a AzureActiveDirectoryGroup. -->
        <Config>
           <UserGroup Type="AzureActiveDirectoryGroup" Name="ade2d5d2-1c86-4303-888e-80f323c33c61" /> <!-- All Intune Licensed Users -->
           <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>

```

