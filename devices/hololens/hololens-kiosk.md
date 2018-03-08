---
title: Set up HoloLens in kiosk mode (HoloLens)
description: Use a kiosk configuration to lock down the apps on HoloLens. 
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerms
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# Set up HoloLens in kiosk mode

In Windows 10, version 1803, you can configure your HoloLens devices to run as multi-app or single-app kiosks.

When HoloLens is configured as a multi-app kiosk, only the allowed apps are available to the user. The benefit of a multi-app kiosk, or fixed-purpose device, is to provide an easy-to-understand experience for individuals by putting in front of them only the things they need to use, and removing from their view the things they don’t need to access. 

Single-app kiosk mode starts the specified app when the user signs in, and restricts the user's ability to launch new apps or change the running app. When single-app kiosk mode is enabled for HoloLens, the bloom gesture and Cortana are disabled, and placed apps aren't shown in the user's surroundings. 

Multi-app kiosks can run Universal Windows Platform (UWP) apps and Classic Wesktop applications (Win32). Single-app kiosks can run UWP apps.

>[!WARNING]
>The assigned access feature which enables kiosk mode is intended for corporate-owned fixed-purpose devices. When the multi-app assigned access configuration is applied on the device, certain policies are enforced system-wide, and will impact other users on the device. Deleting the multi-app configuration will remove the assigned access lockdown profiles associated with the users, but it cannot revert all [the enforced policies](https://docs.microsoft.com/windows/configuration/lock-down-windows-10-to-specific-apps#policies-set-by-multi-app-kiosk-configuration). A factory reset is needed to clear all the policies enforced via assigned access.

For HoloLens devices running Windows 10, version 1803, there are three methods that you can use to configure the device as a kiosk:
- You can [use Microsoft Intune](#intune-kiosk), for HoloLens devices managed by Intune, to configure single-app and multi-app kiosks.
- You can [use a provisioning package](#ppkg-kiosk) to configure single-app and multi-app kiosks.
- You can [use the Windows Device Portal](#portal-kiosk) to configure single-app kiosks.

For HoloLens devices running Windows 10, version 1607, you can [use the Windows Device Portal](#portal-kiosk) to configure single-app kiosks.

<span id="start-kiosk"/>
## Start layout for HoloLens 

If you use [Microsoft Intune](#intune-kiosk) or a [provisioning package](#ppkg-kiosk) to configure a multi-app kiosk, the procedure requires a Start layout. Start layout customization isn't supported in Holographic for Business, so you'll need to use a "fake" Start layout. 

>[!NOTE]
>Because a single-app kiosk launches the kiosk app when a user signs in, there is no Start screen displayed.

### Start layout file for Intune

Save the following sample as an XML file. You will select this file when you configure the kiosk in Microsoft Intune.

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

You will [create an XML file](#ppkg-kiosk) to define the kiosk configuration to be included in a provisioning package. Use the following sample in the `StartLayout` section of your XML file.

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

<span id="intune-kiosk"/>
## Set up kiosk mode using Microsoft Intune (Windows 10, version 1803)



**Multi-app kiosk**

2. In the Microsoft Azure portal, search for **Intune** or go to **More services** > **Intune**.
3. Select **Device configuration**.
4. Select **Profiles**.
5. Select **Create profile**.
6. Enter a friendly name for the profile.
7. Select **Windows 10 and later** for the platform.
8. Select **Device restrictions** for the profile type.
9. Select **Kiosk**.
10. In **Kiosk Mode**, select **Multi app kiosk**.
11. Select **Add** to define a configuration, which specifies the apps that will run and the layout for the Start menu.
12. Enter a friendly name for the configuration.
13. Select an app type, either **Win32 App** for a classic desktop application or **UWP App** for a Universal Windows Platform app.
  - For **Win32 App**, enter the fully qualified pathname of the executable, with respect to the device.
  - For **UWP App**, enter the Application User Model ID for an installed app.
14. Select whether to enable the taskbar.
15. Browse to and select the Start layout XML file that you generated in step 1.
16. Add one or more accounts. When the account signs in, only the apps defined in the configuration will be available.
17. Select **OK**. You can add additional configurations or finish.
18. Assign the profile to a device group to configure the devices in that group as kiosks.

**Single-app kiosk**

2. In the Microsoft Azure portal, search for **Intune** or go to **More services** > **Intune**.
3. Select **Device configuration**.
4. Select **Profiles**.
5. Select **Create profile**.
6. Enter a friendly name for the profile.
7. Select **Windows 10 and later** for the platform.
8. Select **Device restrictions** for the profile type.
9. Select **Kiosk**.
10. In **Kiosk Mode**, select **Single app kiosk**.
11. Enter the user account that will be used for the kiosk.
13. Enter the Application User Model ID for an installed app.
14. Select **OK**, and then select **Create**.
18. Assign the profile to a device group to configure the devices in that group as kiosks.

<span id="ppkg-kiosk"/>
## Setup kiosk mode using a provisioning package (Windows 10, version 1803)

Process:
1. Create XML file(#create-xml-file)
2. Add XML file to provisioning package(#add-xml)
3. Apply provisioning package to device(#apply-ppkg)


<span id="portal-kiosk"/>
## Set up kiosk mode using the Windows Device Portal (Windows 10, version 1607 and version 1803) 

1. [Set up the HoloLens to use the Windows Device Portal](https://developer.microsoft.com/windows/mixed-reality/using_the_windows_device_portal#setting_up_hololens_to_use_windows_device_portal). The Device Portal is a web server on your HoloLens that you can connect to from a web browser on your PC. 

    >[!IMPORTANT]
    >When you set up HoloLens to use the Device Portal, you must enable **Developer Mode** on the device. **Developer Mode** on a device that has been upgraded to Windows Holographic for Business enables side-loading of apps, which risks the installation of apps that have not been certified by the Microsoft Store. Administrators can block the ability to enable **Developer Mode** using the **ApplicationManagement/AllowDeveloper Unlock** setting in the [Policy CSP](https://msdn.microsoft.com/library/windows/hardware/dn904962.aspx). [Learn more about Developer Mode.](https://msdn.microsoft.com/windows/uwp/get-started/enable-your-device-for-development#developer-mode)
    
2. On a PC, connect to the HoloLens using [Wi-Fi](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#connecting_over_wi-fi) or [USB](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#connecting_over_usb).

3. [Create a user name and password](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#creating_a_username_and_password) if this is the first time you connect to the Windows Device Portal, or enter the user name and password that you previously set up.

    >[!TIP]
    >If you see a certificate error in the browser, follow [these troubleshooting steps](https://developer.microsoft.com/windows/mixed-reality/Using_the_Windows_Device_Portal.html#security_certificate). 

4. In the Windows Device Portal, click **Kiosk Mode**.

    ![Kiosk Mode](images/kiosk.png)

    >[!NOTE]
    >The kiosk mode option will be available if the device is [enrolled in device management](hololens-enroll-mdm.md) and has a [license to upgrade to Windows Holographic for Business](hololens-upgrade-enterprise.md).

5. Select **Enable Kiosk Mode**, choose an app to run when the device starts, and click **Save**.


## More information

>[!VIDEO https://www.microsoft.com/videoplayer/embed/ce9992ab-9fea-465d-b773-ee960b990c4a?autoplay=false]

>[!VIDEO https://www.microsoft.com/videoplayer/embed/fa125d0f-77e4-4f64-b03e-d634a4926884?autoplay=false]