---
title: EnterpriseAssignedAccess CSP
description: Use the EnterpriseAssignedAccess configuration service provider (CSP) to configure custom layouts on a device. 
ms.assetid: 5F88E567-77AA-4822-A0BC-3B31100639AA
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 07/12/2017
---

# EnterpriseAssignedAccess CSP


The EnterpriseAssignedAccess configuration service provider allows IT administrators to configure settings, such as language and themes, lock down a device, and configure custom layouts on a device. For example, the administrator can lock down a device so that only applications specified in an Allow list are available. Apps not on the Allow list remain installed on the device, but are hidden from view and blocked from launching.

> [!NOTE]
> The EnterpriseAssignedAccess CSP is only supported in Windows 10 Mobile.

For more information about how to interact with the lockdown XML at runtime, see [**DeviceLockdownProfile class**](/uwp/api/Windows.Embedded.DeviceLockdown.DeviceLockdownProfile).

The following shows the EnterpriseAssignedAccess configuration service provider in tree format as used by both the Open Mobile Alliance (OMA) Device Management (DM) and OMA Client Provisioning.

```console
./Vendor/MSFT
EnterpriseAssignedAccess
----AssignedAccess
--------AssignedAccessXml
----LockScreenWallpaper
--------BGFileName
----Theme
--------ThemeBackground
--------ThemeAccentColorID
--------ThemeAccentColorValue
----Clock
--------TimeZone
----Locale
--------Language
```

The following list shows the characteristics and parameters.

<a href="" id="-vendor-msft-enterpriseassignedaccess-"></a>**./Vendor/MSFT/EnterpriseAssignedAccess/**
The root node for the EnterpriseAssignedAccess configuration service provider. Supported operations are Add, Delete, Get and Replace.

<a href="" id="assignedaccess-"></a>**AssignedAccess/**
The parent node of assigned access XML.

<a href="" id="assignedaccess-assignedaccessxml"></a>**AssignedAccess/AssignedAccessXml**
The XML code that controls the assigned access settings that will be applied to the device.

Supported operations are Add, Delete, Get and Replace.

The Apps and Settings sections of lockdown XML constitute an Allow list. Any app or setting that is not specified in AssignedAccessXML will not be available on the device to users. The following table describes the entries in lockdown XML.

> [!IMPORTANT]
> When using the AssignedAccessXml in the EnterpriseAssignedAccess CSP through an MDM, the XML must use escaped characters, such as \< instead of < because it is embedded in an XML. The examples provided in the topic are formatted for readability.

When using the AssignedAccessXml in a provisioning package using the Windows Configuration Designer tool, do not use escaped characters.

Entry | Description
----------- | ------------
ActionCenter | You can enable or disable the Action Center (formerly known as Notification Center) on the device. Set to true to enable the Action Center, or set to false to disable the Action Center.
ActionCenter | Example: `<ActionCenter enabled="true"></ActionCenter>`
ActionCenter | In Windows 10, when the Action Center is disabled, Above Lock notifications and toasts are also disabled. When the Action Center is enabled, the following policies are also enabled;  **AboveLock/AllowActionCenterNotifications** and **AboveLock/AllowToasts**. For more information about these policies, see [Policy CSP](policy-configuration-service-provider.md)
ActionCenter | You can also add the following optional attributes to the ActionCenter element to override the default behavior: **aboveLockToastEnabled** and **actionCenterNotificationEnabled**. Valid values are 0 (policy disabled), 1 (policy enabled), and -1 (not set, policy enabled). In this example, the Action Center is enabled and both policies are disabled.: `<ActionCenter enabled="true" aboveLockToastEnabled="0" actionCenterNotificationEnabled="0"/>`
ActionCenter | These optional attributes are independent of each other. In this example, Action Center is enabled, the notifications policy is disabled, and the toast policy is enabled by default because it is not set. `<ActionCenter enabled="true" actionCenterNotificationEnabled="0"/>`
StartScreenSize | Specify the size of the Start screen. In addition to 4/6 columns, you can also use 4/6/8 depending on screen resolutions. Valid values: **Small** - sets the width to 4 columns on device with short axis <400epx or 6 columns on devices with short axis >=400epx. **Large** - sets the width to 6 columns on devices with short axis <400epx or 8 columns on devices with short axis >=400epx.
StartScreenSize | If you have existing lockdown XML, you must update it if your device has >=400epx on its short axis so that tiles on Start can fill all 8 columns if you want to use all 8 columns instead of 6, or use 6 columns instead of 4. Example: `<StartScreenSize>Large</StartScreenSize>`
Application | Provide the product ID for each app that will be available on the device. You can find the product ID for a locally developed app in the AppManifest.xml file of the app. 
Application | To turn on the notification for a Windows app, you must include the application's AUMID in the lockdown XML. However, the user can change the setting at any time from user interface. Example: `<Application productId="{A558FEBA-85D7-4665-B5D8-A2FF9C19799B}" aumid="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail"/>`
Application | <img src="images/enterpriseassignedaccess-csp.png" alt="modern app notification" />
Application | Include PinToStart to display an app on the Start screen. For apps pinned to the Start screen, identify a tile size (small, medium, or large), and a location. The size of a small tile is 1 column x 1 row, a medium tile is 2 x 2, and a large tile is 4 x 2. For the tile location, the first value indicates the column and the second value indicates the row. A value of 0 (zero) indicates the first column, a value of 1 indicates the second column, and so on. Include autoRun as an attribute to configure the application to run automatically.

Application example:
```xml
<Application productId="{2A4E62D8-8809-4787-89F8-69D0F01654FB}" autoRun="true">
   <PinToStart>
      <Size>Large</Size>
      <Location>
         <LocationX>0</LocationX>
         <LocationY>2</LocationY>
      </Location>
   </PinToStart>
</Application>
```

Entry | Description
----------- | ------------
Application | Multiple App Packages enable multiple apps to exist inside the same package. Since ProductIds identify packages and not applications, specifying a ProductId is not enough to distinguish between individual apps inside a multiple app package. Trying to include application from a multiple app package with just a ProductId can result in unexpected behavior. To support pinning applications in multiple app packages, use an AUMID parameter in lockdown XML. The following example shows how to pin both Outlook mail and Outlook calendar.

Application example:
```xml
<Apps>
    <!-- Outlook Calendar -->
    <Application productId="{A558FEBA-85D7-4665-B5D8-A2FF9C19799B}"
aumid="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar">
        <PinToStart>
            <Size>Large</Size>
            <Location>
                <LocationX>1</LocationX>
                <LocationY>4</LocationY>
            </Location>
        </PinToStart>
    </Application>
    <!-- Outlook Mail-->
    <Application productId="{A558FEBA-85D7-4665-B5D8-A2FF9C19799B}"
aumid="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail">
        <PinToStart>
            <Size>Large</Size>
            <Location>
                <LocationX>1</LocationX>
                <LocationY>6</LocationY>
            </Location>
        </PinToStart>
    </Application>
</Apps>
```

Entry | Description
----------- | ------------
Folder | A folder should be contained in `<Applications/>` node among with other `<Application/>` nodes, it shares most grammar with the Application Node, **folderId** is mandatory, **folderName** is optional, which is the folder name displayed on Start. **folderId** is a unique unsigned integer for each folder.

Folder example:
```xml
<Application folderId="4" folderName="foldername">
    <PinToStart>
        <Size>Large</Size>
        <Location>
            <LocationX>0</LocationX>
            <LocationY>2</LocationY>
        </Location>
    </PinToStart>
</Application>
```
An application that belongs in the folder would add an optional attribute **ParentFolderId**, which maps to **folderId** of the folder. In this case, the location of this application will be located inside the folder.

```xml
<Application productId="{2A4E62D8-8809-4787-89F8-69D0F01654FB}">
    <PinToStart>
        <Size>Medium</Size>
        <Location>
            <LocationX>0</LocationX>
            <LocationY>0</LocationY>
        </Location>
        <ParentFolderId>2</ParentFolderId>
    </PinToStart>
</Application>
```

Entry | Description
----------- | ------------
Settings | Starting in Windows 10, version 1511, you can specify the following settings pages in the lockdown XML file. For Windows 10, version 1703, see the instructions below for the new way to specify the settings pages.

<ul>
<li>System (main menu) - SettingsPageGroupPCSystem
<ul>
<li>Display - SettingsPageDisplay</li>
<li>Notifications &amp; actions - SettingsPageAppsNotifications</li>
<li>Phone - SettingsPageCalls</li>
<li>Messaging - SettingsPageMessaging</li>
<li>Battery saver - SettingsPageBatterySaver</li>
<li>Storage - SettingsPageStorageSenseStorageOverview</li>
<li>Driving mode - SettingsPageDrivingMode</li>
<li>Offline maps - SettingsPageMaps</li>
<li>About - SettingsPagePCSystemInfo</li>
<li>Apps for websites - SettingsPageAppsForWebsites</li>
</ul></li>
<li>Devices (main menu) - SettingsPageGroupDevices
<ul>
<li>Default camera - SettingsPagePhotos</li>
<li>Bluetooth - SettingsPagePCSystemBluetooth</li>
<li>NFC - SettingsPagePhoneNFC</li>
<li>Mouse - SettingsPageMouseTouchpad</li>
<li>USB - SettingsPageUsb</li>
</ul></li>
<li>Network and wireless (main menu) - SettingsPageGroupNetwork
<ul>
<li>Cellular and SIM - SettingsPageNetworkCellular</li>
<li>Wi-Fi - SettingsPageNetworkWiFi</li>
<li>Airplane mode - SettingsPageNetworkAirplaneMode</li>
<li>Data usage - SettingsPageDataSenseOverview</li>
<li>Mobile hotspot - SettingsPageNetworkMobileHotspot</li>
<li>VPN - SettingsPageNetworkVPN</li>
<li></li>
</ul></li>
<li>Personalization (main menu) - SettingsPageGroupPersonalization
<ul>
<li>Start - SettingsPageBackGround</li>
<li>Colors - SettingsPageColors</li>
<li>Sounds - SettingsPageSounds</li>
<li>Lock screen - SettingsPageLockscreen</li>
<li>Glance - SettingsPageGlance</li>
<li>Navigation bar - SettingsNavigationBar</li>
</ul></li>
<li>Accounts (main menu) - SettingsPageGroupAccounts
<ul>
<li>Your account - SettingsPageAccountsPicture</li>
<li>Sign-in options - SettingsPageAccountsSignInOptions</li>
<li>Work access - SettingsPageWorkAccess</li>
<li>Sync your settings - SettingsPageAccountsSync</li>
<li>Apps corner* - SettingsPageAppsCorner</li>
<li>Email - SettingsPageAccountsEmailApp</li>
</ul></li>
<li>Time and language (main menu) - SettingsPageGroupTimeRegion
<ul>
<li>Date and time - SettingsPageTimeRegionDateTime</li>
<li>Language - SettingsPageTimeLanguage</li>
<li>Region - SettingsPageRegion</li>
<li>Keyboard - SettingsPageKeyboard</li>
<li>Speech - SettingsPageSpeech</li>
</ul></li>
<li>Ease of access (main menu) - SettingsPageGroupEaseOfAccess
<ul>
<li>Narrator - SettingsPageEaseOfAccessNarrator</li>
<li>Magnifier - SettingsPageEaseOfAccessMagnifier</li>
<li>High contrast - SettingsPageEaseOfAccessHighContrast</li>
<li>Closed captions - SettingsPageEaseOfAccessClosedCaptioning</li>
<li>More options - SettingsPageEaseOfAccessMoreOptions</li>
</ul></li>
<li>Privacy (main menu) - SettingsPageGroupPrivacy
<ul>
<li>Location - SettingsPagePrivacyLocation</li>
<li>Camera - SettingsPagePrivacyWebcam</li>
<li>Microphone - SettingsPagePrivacyMicrophone</li>
<li>Motion - SettingsPagePrivacyMotionData</li>
<li>Speech inking and typing - SettingsPagePrivacyPersonalization</li>
<li>Account info - SettingsPagePrivacyAccountInfo</li>
<li>Contacts - SettingsPagePrivacyContacts</li>
<li>Calendar - SettingsPagePrivacyCalendar</li>
<li>Messaging - SettingsPagePrivacyMessaging</li>
<li>Radios - SettingsPagePrivacyRadios</li>
<li>Background apps - SettingsPagePrivacyBackgroundApps</li>
<li>Accessory apps - SettingsPageAccessories</li>
<li>Advertising ID - SettingsPagePrivacyAdvertisingId</li>
<li>Other devices - SettingsPagePrivacyCustomPeripherals</li>
<li>Feedback &amp; diagnostics - SettingsPagePrivacySIUFSettings</li>
<li>Call history - SettingsPagePrivacyCallHistory</li>
<li>Email - SettingsPagePrivacyEmail</li>
<li>Phone call - SettingsPagePrivacyPhoneCall</li>
<li>Notifications - SettingsPagePrivacyNotifications</li>
<li>CDP - SettingsPagePrivacyCDP</li>
</ul></li>
<li>Update and Security (main menu) - SettingsPageGroupRestore
<ul>
<li>Phone update - SettingsPageRestoreMusUpdate</li>
<li>Backup - SettingsPageRestoreOneBackup</li>
<li>Find my phone - SettingsPageFindMyDevice</li>
<li>For developers - SettingsPageSystemDeveloperOptions</li>
<li>Windows Insider Program - SettingsPageFlights</li>
<li>Device encryption - SettingsPageGroupPCSystemDeviceEncryption</li>
</ul></li>
<li>OEM (main menu) - SettingsPageGroupExtensibility
<ul>
<li>Extensibility - SettingsPageExtensibility</li>
</ul></li>
</ul>

Entry | Description
----------- | ------------
Settings | Starting in Windows 10, version 1703, you can specify the settings pages using the settings URI.

For example, in place of SettingPageDisplay, you would use ms-settings:display. See [ms-settings: URI scheme reference](/windows/uwp/launch-resume/launch-settings-app#ms-settings-uri-scheme-reference) to find the URI for each settings page.

Here is an example for Windows 10, version 1703.

```xml
<Settings>
  <System name="ms-settings:display"/>
  <System name="ms-settings:appsforwebsites"/>
  <System name="ms-settings:about"/>
  <System name="ms-settings:camera"/>
  <System name="ms-settings:nfctransactions"/>
  <System name="ms-settings:mousetouchpad"/>
  <System name="ms-settings:usb"/>
</Settings>
```

**Quick action settings**

Starting in Windows 10, version 1511, you can specify the following quick action settings in the lockdown XML file. The following list shows the quick action settings and settings page dependencies (group and page).

> [!NOTE]
> Only Windows 10, versions 1511 and 1607, the dependent settings group and pages are automatically added when the quick action item is specified in the lockdown XML. In Windows 10, version 1703, Quick action settings no longer require any dependencies from related group or page.

<ul>
<li><p>SystemSettings_System_Display_QuickAction_Brightness</p>
<p>Dependencies - SettingsPageSystemDisplay, SettingsPageDisplay</p></li>
<li><p>SystemSettings_System_Display_Internal_Rotation</p>
<p>Dependencies - SettingsPageSystemDisplay, SettingsPageDisplay</p></li>
<li><p>SystemSettings_QuickAction_WiFi</p>
<p>Dependencies - SettingsPageGroupNetwork, SettingsPageNetworkWiFi</p></li>
<li><p>SystemSettings_QuickAction_InternetSharing</p>
<p>Dependencies - SettingsPageGroupNetwork, SettingsPageInternetSharing</p></li>
<li><p>SystemSettings_QuickAction_CellularData</p>
<p>Dependencies - SettingsPageGroupNetwork, SettingsPageNetworkCellular</p></li>
<li><p>SystemSettings_QuickAction_AirplaneMode</p>
<p>Dependencies - SettingsPageGroupNetwork, SettingsPageNetworkAirplaneMode</p></li>
<li><p>SystemSettings_Privacy_LocationEnabledUserPhone</p>
<p>Dependencies - SettingsGroupPrivacyLocationGlobals, SettingsPagePrivacyLocation</p></li>
<li><p>SystemSettings_Network_VPN_QuickAction</p>
<p>Dependencies - SettingsPageGroupNetwork, SettingsPageNetworkVPN</p></li>
<li><p>SystemSettings_Launcher_QuickNote</p>
<p>Dependencies - none</p></li>
<li><p>SystemSettings_Flashlight_Toggle</p>
<p>Dependencies - none</p></li>
<li><p>SystemSettings_Device_BluetoothQuickAction</p>
<p>Dependencies - SettingsPageGroupDevices, SettingsPagePCSystemBluetooth</p></li>
<li><p>SystemSettings_BatterySaver_LandingPage_OverrideControl</p>
<p>Dependencies - BatterySaver_LandingPage_SettingsConfiguration, SettingsPageBatterySaver</p></li>
<li><p>QuickActions_Launcher_DeviceDiscovery</p>
<p>Dependencies - none</p></li>
<li><p>QuickActions_Launcher_AllSettings</p>
<p>Dependencies - none</p></li>
<li><p>SystemSettings_QuickAction_QuietHours</p>
<p>Dependencies - none</p></li>
<li><p>SystemSettings_QuickAction_Camera</p>
<p>Dependencies - none</p></li>
</ul>

Starting in Windows 10, version 1703, Quick action settings no longer require any dependencies from related group or page. Here is the list:
- QuickActions_Launcher_AllSettings
- QuickActions_Launcher_DeviceDiscovery
- SystemSettings_BatterySaver_LandingPage_OverrideControl
- SystemSettings_Device_BluetoothQuickAction
- SystemSettings_Flashlight_Toggle
- SystemSettings_Launcher_QuickNote
- SystemSettings_Network_VPN_QuickAction
- SystemSettings_Privacy_LocationEnabledUserPhone
- SystemSettings_QuickAction_AirplaneMode
- SystemSettings_QuickAction_Camera
- SystemSettings_QuickAction_CellularData
- SystemSettings_QuickAction_InternetSharing
- SystemSettings_QuickAction_QuietHours
- SystemSettings_QuickAction_WiFi
- SystemSettings_System_Display_Internal_Rotation
- SystemSettings_System_Display_QuickAction_Brightness


In this example, all settings pages and quick action settings are allowed. An empty \<Settings> node indicates that none of the settings are blocked.

```xml
<Settings>
</Settings>
```

In this example for Windows 10, version 1511, all System setting pages are enabled. Note that the System page group is added as well as all of the System subpage names.

```xml
<Settings>
  <System name="SettingsPageGroupPCSystem" />
  <System name="SettingsPageDisplay" />
  <System name="SettingsPageAppsNotifications" />
  <System name="SettingsPageCalls" />
  <System name="SettingsPageMessaging" />
  <System name="SettingsPageBatterySaver" />
  <System name="SettingsPageStorageSenseStorageOverview" />
  <System name="SettingsPageGroupPCSystemDeviceEncryption" />
  <System name="SettingsPageDrivingMode" />
  <System name="SettingsPagePCSystemInfo" />
 </Settings>
```
Here is an example for Windows 10, version 1703.

```xml
<Settings>
  <System name="ms-settings:display"/>
  <System name="ms-settings:appsforwebsites"/>
  <System name="ms-settings:about"/>
  <System name="ms-settings:camera"/>
  <System name="ms-settings:nfctransactions"/>
  <System name="ms-settings:mousetouchpad"/>
  <System name="ms-settings:usb"/>
</Settings>
```

Entry | Description
----------- | ------------
Buttons | The following list identifies the hardware buttons on the device that you can lock down in <strong>ButtonLockdownList</strong>. When a user taps a button that is in the lockdown list, nothing will happen.

<ul>
<li><p>Start</p>
<li><p>Back</p></li>
<li><p>Search</p></li>
<li><p>Camera</p></li>
<li><p>Custom1</p></li>
<li><p>Custom2</p></li>
<li><p>Custom3</p></li>
</ul>

> [!NOTE]
> Lock down of the Start button only prevents the press and hold event.
>
> Custom buttons are hardware buttons that can be added to devices by OEMs.

Buttons example:
```xml
<Buttons>
   <ButtonLockdownList>
      <!-- Lockdown all buttons -->
         <Button name="Search">
         </Button>
         <Button name="Camera">
         </Button>
         <Button name="Custom1">
         </Button>
         <Button name="Custom2">
         </Button>
         <Button name="Custom3">
         </Button>
   </ButtonLockdownList>
```
The Search and custom buttons can be <em>remapped</em> or configured to open a specific application. Button remapping takes effect for the device and applies to all users.

> [!NOTE]
> The lockdown settings for a button, per user role, will apply regardless of the button mapping.
>
> Button remapping can enable a user to open an application that is not in the Allow list. Use button lock down to prevent application access for a user role.

To remap a button in lockdown XML, you supply the button name, the button event (typically "press"), and the product ID for the application the button will open.

```xml
<ButtonRemapList>
   <Button name="Search">
      <ButtonEvent name="Press">
         <!-- Alarms -->
         <Application productId="{08179793-ED2E-45EA-BA12-BDE3EE9C3CE3}" parameters="" />
          </ButtonEvent>
   </Button>
</ButtonRemapList>
```
**Disabling navigation buttons**
To disable navigation buttons (such as Home or Back) in lockdown XML, you supply the name (for example, Start) and button event (typically "press").

The following section contains a sample lockdown XML file that shows how to disable navigation buttons.

```xml
<?xml version="1.0" encoding="utf-8"?>
<HandheldLockdown version="1.0" >
    <Default>
        <ActionCenter enabled="false" />
        <Apps>
            <!-- Settings -->
            <Application productId="{2A4E62D8-8809-4787-89F8-69D0F01654FB}">
                <PinToStart>
                    <Size>Large</Size>
                    <Location>
                        <LocationX>0</LocationX>
                        <LocationY>0</LocationY>
                    </Location>
                </PinToStart>
            </Application>

            <!-- Phone Apps -->
            <Application productId="{F41B5D0E-EE94-4F47-9CFE-3D3934C5A2C7}">
                <PinToStart>
                    <Size>Small</Size>
                    <Location>
                        <LocationX>2</LocationX>
                        <LocationY>2</LocationY>
                    </Location>
                </PinToStart>
            </Application>
        </Apps>
        <Buttons>
            <ButtonLockdownList>
                <Button name="Start">
                    <ButtonEvent name="Press" />
                </Button>
                <Button name="Back">
                    <ButtonEvent name="Press" />
                    <ButtonEvent name="PressAndHold" />
                </Button>
                <Button name="Search">
                    <ButtonEvent name="All" />
                </Button>
                <Button name="Camera">
                    <ButtonEvent name="Press" />
                    <ButtonEvent name="PressAndHold" />
                </Button>
                <Button name="Custom1">
                    <ButtonEvent name="Press" />
                    <ButtonEvent name="PressAndHold" />
                </Button>
                <Button name="Custom2">
                    <ButtonEvent name="Press" />
                    <ButtonEvent name="PressAndHold" />
                </Button>
                <Button name="Custom3">
                    <ButtonEvent name="Press" />
                    <ButtonEvent name="PressAndHold" />
                </Button>
            </ButtonLockdownList>
            <ButtonRemapList />
        </Buttons>
        <MenuItems>
            <DisableMenuItems/>
        </MenuItems>
        <Settings>
        </Settings>
        <Tiles>
            <EnableTileManipulation/>
        </Tiles>
        <StartScreenSize>Small</StartScreenSize>
    </Default>
</HandheldLockdown>
```

Entry | Description
----------- | ------------
MenuItems | Use **DisableMenuItems** to prevent use of the context menu, which is displayed when a user presses and holds an application in the All Programs list. You can include this entry in the default profile and in any additional user role profiles that you create.

> [!IMPORTANT]
> If **DisableMenuItems** is not included in a profile, users of that profile can uninstall apps.

MenuItems example:

```xml
<MenuItems>
   <DisableMenuItems/>
</MenuItems>
```

Entry | Description
----------- | ------------
Tiles | **Turning-on tile manipulation** - By default, under Assigned Access, tile manipulation is turned off (blocked) and only available if enabled in the user’s profile. If tile manipulation is enabled in the user’s profile, they can pin/unpin, move, and resize tiles based on their preferences. When multiple people use one device and you want to enable tile manipulation for multiple users, you must enable it for each user in their user profile.

> [!IMPORTANT]
>  If a device is turned off then back on, the tiles reset to their predefined layout. If a device has only one profile, the only way to reset the tiles is to turn off then turn on the device. If a device has multiple profiles, the device resets the tiles to the predefined layout based on the logged-in user’s profile.

The following sample file contains configuration for enabling tile manipulation.

> [!NOTE]
> Tile manipulation is disabled when you don’t have a `<Tiles>` node in lockdown XML, or if you have a `<Tiles>` node but don’t have the `<EnableTileManipulation>` node.

```xml
<?xml version="1.0" encoding="utf-8"?>
<HandheldLockdown version="1.0" >
    <Default>
        <ActionCenter enabled="false" />
        <Apps>
            <!-- Settings -->
            <Application productId="{2A4E62D8-8809-4787-89F8-69D0F01654FB}">
                <PinToStart>
                    <Size>Large</Size>
                    <Location>
                        <LocationX>0</LocationX>
                        <LocationY>0</LocationY>
                    </Location>
                </PinToStart>
            </Application>

            <!-- Phone Apps -->
            <Application productId="{F41B5D0E-EE94-4F47-9CFE-3D3934C5A2C7}">
                <PinToStart>
                    <Size>Small</Size>
                    <Location>
                        <LocationX>2</LocationX>
                        <LocationY>2</LocationY>
                    </Location>
                </PinToStart>
            </Application>
        </Apps>
        <Buttons>
            <ButtonLockdownList>
                <Button name="Start">
                    <ButtonEvent name="Press" />
                </Button>
                <Button name="Back">
                    <ButtonEvent name="Press" />
                    <ButtonEvent name="PressAndHold" />
                </Button>
                <Button name="Search">
                    <ButtonEvent name="All" />
                </Button>
                <Button name="Camera">
                    <ButtonEvent name="Press" />
                    <ButtonEvent name="PressAndHold" />
                </Button>
                <Button name="Custom1">
                    <ButtonEvent name="Press" />
                    <ButtonEvent name="PressAndHold" />
                </Button>
                <Button name="Custom2">
                    <ButtonEvent name="Press" />
                    <ButtonEvent name="PressAndHold" />
                </Button>
                <Button name="Custom3">
                    <ButtonEvent name="Press" />
                    <ButtonEvent name="PressAndHold" />
                </Button>
            </ButtonLockdownList>
            <ButtonRemapList />
        </Buttons>
        <MenuItems>
            <DisableMenuItems/>
        </MenuItems>
        <Settings>
        </Settings>
        <Tiles>
            <EnableTileManipulation/>
        </Tiles>
        <StartScreenSize>Small</StartScreenSize>
    </Default>
</HandheldLockdown>
```

Entry | Description
----------- | ------------
CSP Runner | Allows CSPs to be executed on the device per user role. You can use this to implement role specific policies, such as changing the color scheme when an admin logs on the device, or to set configurations per role.
 

<a href="" id="lockscreenwallpaper-"></a>**LockscreenWallpaper/**
The parent node of the lock screen-related parameters that let administrators query and manage the lock screen image on devices. Supported operations are Add, Delete, Get and Replace.

<a href="" id="lockscreenwallpaper-bgfilename"></a>**LockscreenWallpaper/BGFileName**
The file name of the lock screen. The image file for the lock screen can be in .jpg or .png format and must not exceed 2 MB. The file name can also be in the Universal Naming Convention (UNC) format, in which case the device downloads it from the shared network and then sets it as the lock screen wallpaper.

Supported operations are Add, Get, and Replace.

<a href="" id="theme-"></a>**Theme/**
The parent node of theme-related parameters.

Supported operations are Add, Delete, Get and Replace.

<a href="" id="theme-themebackground"></a>**Theme/ThemeBackground**
Indicates whether the background color is light or dark. Set to **0** for light; set to **1** for dark.

Supported operations are Get and Replace.

<a href="" id="theme-themeaccentcolorid"></a>**Theme/ThemeAccentColorID**
The accent color to apply as the foreground color for tiles, controls, and other visual elements on the device. The following table shows the possible values.

|Value|Description|
|--- |--- |
|0|Lime|
|1|Green|
|2|Emerald|
|3|Teal (Viridian)|
|4|Cyan (Blue)|
|5|Cobalt|
|6|Indigo|
|7|Violet (Purple)|
|8|Pink|
|9|Magenta|
|10|Crimson|
|11|Red|
|12|Orange (Mango)|
|13|Amber|
|14|Yellow|
|15|Brown|
|16|Olive|
|17|Steel|
|18|Mauve|
|19|Sienna|
|101 through 104|Optional colors, as defined by the OEM|
|151|Custom accent color for Enterprise|

Supported operations are Get and Replace.

<a href="" id="theme-themeaccentcolorvalue"></a>**Theme/ThemeAccentColorValue**
A 6-character string for the accent color to apply to controls and other visual elements.

To use a custom accent color for Enterprise, enter **151** for *ThemeAccentColorID* before *ThemeAccentColorValue* in lockdown XML. *ThemeAccentColorValue* configures the custom accent color using hex values for red, green, and blue, in RRGGBB format. For example, enter FF0000 for red.

Supported operations are Get and Replace.

<a href="" id="persistdata"></a>**PersistData**
Not supported in Windows 10.

The parent node of whether to persist data that has been provisioned on the device.

<a href="" id="persistdata-persistprovisioneddata"></a>**PersistData/PersistProvisionedData**
Not supported in Windows 10. Use doWipePersistProvisionedData in [RemoteWipe CSP](remotewipe-csp.md) instead.

<a href="" id="clock-timezone-"></a>**Clock/TimeZone/**
An integer that specifies the time zone of the device. The following table shows the possible values.

Supported operations are Get and Replace.

|Value|Time zone|
|--- |--- |
|0|UTC-12 International Date Line West|
|100|UTC+13 Samoa|
|110|UTC-11 Coordinated Universal Time-11|
|200|UTC-10 Hawaii|
|300|UTC-09 Alaska|
|400|UTC-08 Pacific Time (US & Canada)|
|410|UTC-08 Baja California|
|500|UTC-07 Mountain Time (US & Canada)|
|510|UTC-07 Chihuahua, La Paz, Mazatlan|
|520|UTC-07 Arizona|
|600|UTC-06 Saskatchewan|
|610|UTC-06 Central America|
|620|UTC-06 Central Time (US & Canada)|
|630|UTC-06 Guadalajara, Mexico City, Monterrey|
|700|UTC-05 Eastern Time (US & Canada)|
|710|UTC-05 Bogota, Lima, Quito|
|720|UTC-05 Indiana (East)|
|800|UTC-04 Atlantic Time (Canada)|
|810|UTC-04 Cuiaba|
|820|UTC-04 Santiago|
|830|UTC-04 Georgetown, La Paz, Manaus, San Juan|
|840|UTC-04 Caracas|
|850|UTC-04 Asuncion|
|900|UTC-03:30 Newfoundland|
|910|UTC-03 Brasilia|
|920|UTC-03 Greenland|
|930|UTC-03 Montevideo|
|940|UTC-03 Cayenne, Fortaleza|
|950|UTC-03 Buenos Aires|
|960|UTC-03 Salvador|
|1000|UTC-02 Mid-Atlantic|
|1010|UTC-02 Coordinated Universal Time-02|
|1100|UTC-01 Azores|
|1110|UTC-01 Cabo Verde|
|1200|UTC Dublin, Edinburgh, Lisbon, London|
|1210|UTC Monrovia, Reykjavik|
|1220|UTC Casablanca|
|1230|UTC Coordinated Universal Time|
|1300|UTC+01 Belgrade, Bratislava, Budapest, Ljubljana, Prague|
|1310|UTC+01 Sarajevo, Skopje, Warsaw, Zagreb|
|1320|UTC+01 Brussels, Copenhagen, Madrid, Paris|
|1330|UTC+01 West Central Africa|
|1340|UTC+01 Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna|
|1350|UTC+01 Windhoek|
|1360|UTC+01 Tripoli|
|1400|UTC+02 E. Europe|
|1410|UTC+02 Cairo|
|1420|UTC+02 Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius|
|1430|UTC+02 Athens, Bucharest|
|1440|UTC+02 Jerusalem|
|1450|UTC+02 Amman|
|1460|UTC+02 Beirut|
|1470|UTC+02 Harare, Pretoria|
|1480|UTC+02 Damascus|
|1490|UTC+02 Istanbul|
|1500|UTC+03 Kuwait, Riyadh|
|1510|UTC+03 Baghdad|
|1520|UTC+03 Nairobi|
|1530|UTC+03 Kaliningrad, Minsk|
|1540|UTC+04 Moscow, St. Petersburg, Volgograd|
|1550|UTC+03 Tehran|
|1600|UTC+04 Abu Dhabi, Muscat|
|1610|UTC+04 Baku|
|1620|UTC+04 Yerevan|
|1630|UTC+04 Kabul|
|1640|UTC+04 Tbilisi|
|1650|UTC+04 Port Louis|
|1700|UTC+06 Ekaterinburg|
|1710|UTC+05 Tashkent|
|1720|UTC+05 Chennai, Kolkata, Mumbai, New Delhi|
|1730|UTC+05 Sri Jayawardenepura|
|1740|UTC+05 Kathmandu|
|1750|UTC+05 Islamabad, Karachi|
|1800|UTC+06 Astana|
|1810|UTC+07 Novosibirsk|
|1820|UTC+06 Yangon (Rangoon)|
|1830|UTC+06 Dhaka|
|1900|UTC+08 Krasnoyarsk|
|1910|UTC+07 Bangkok, Hanoi, Jakarta|
|1900|UTC+08 Krasnoyarsk|
|2000|UTC+08 Beijing, Chongqing, Hong Kong SAR, Urumqi|
|2010|UTC+09 Irkutsk|
|2020|UTC+08 Kuala Lumpur, Singapore|
|2030|UTC+08 Taipei|
|2040|UTC+08 Perth|
|2050|UTC+08 Ulaanbaatar|
|2100|UTC+09 Seoul|
|2110|UTC+09 Osaka, Sapporo, Tokyo|
|2120|UTC+10 Yakutsk|
|2130|UTC+09 Darwin|
|2140|UTC+09 Adelaide|
|2200|UTC+10 Canberra, Melbourne, Sydney|
|2210|UTC+10 Brisbane|
|2220|UTC+10 Hobart|
|2230|UTC+11 Vladivostok|
|2240|UTC+10 Guam, Port Moresby|
|2300|UTC+11 Solomon Is., New Caledonia|
|2310|UTC+12 Magadan|
|2400|UTC+12 Fiji|
|2410|UTC+12 Auckland, Wellington|
|2420|UTC+12 Petropavlovsk-Kamchatsky|
|2430|UTC+12 Coordinated Universal Time +12|
|2500|UTC+13 Nuku'alofa|

<a href="" id="locale-language-"></a>**Locale/Language/**
The culture code that identifies the language to display on a device, and specifies the formatting of numbers, currencies, time, and dates. For language values, see [Locale IDs Assigned by Microsoft](/openspecs/windows_protocols/ms-lcid/a9eac961-e77d-41a6-90a5-ce1a8b0cdb9c).

The language setting is configured in the Default User profile only.

> [!NOTE]
> Apply the Locale ID only after the corresponding language packs are built into and supported for the OS image running on the device. The specified language will be applied as the phone language and a restart may be required.

Supported operations are Get and Replace.

## OMA client provisioning examples


The XML examples in this section show how to perform various tasks by using OMA client provisioning.

> [!NOTE]
> These examples are XML snippets and do not include all sections that are required for a complete lockdown XML file.

 

### Assigned Access settings

The following example shows how to add a new policy.

```xml
<wap-provisioningdoc>
  <characteristic type="EnterpriseAssignedAccess">
    <characteristic type="AssignedAccess">
      <parm name=" AssignedAccessXml" datatype="string"
            value="<?xml version="1.0" encoding="utf-8"?><HandheldLockdown version="1.0"><Default><Apps><Application productId="{5B04B775-356B-4AA0-AAF8-6491FFEA5615}" pinToStart="1"/><Application productId="{5B04B775-356B-4AA0-AAF8-6491FFEA5612}" pinToStart="0"/></Apps><Settings><System name="Microsoft.Themes" /><System name="Microsoft.About" /></Settings><Buttons><ButtonLockdownList><Button name="Start"><ButtonEvent name="Press" /><ButtonEvent name="PressAndHold" /></Button><Button name="Camera"><ButtonEvent name="Press" /><ButtonEvent name="PressAndHold" /></Button><Button name="Search"><ButtonEvent name="Press" /><ButtonEvent name="PressAndHold" /></Button></ButtonLockdownList><ButtonRemapList/></Buttons><MenuItems><DisableMenuItems/></MenuItems></Default><RoleList><Role guid="{76C01983-A872-4C4E-B4C6-321EAC709CEA}" name="Associate"><Apps><Application productId="{5B04B775-356B-4AA0-AAF8-6491FFEA5615}" pinToStart="1"/></Apps><Settings><System name="Microsoft.Themes" /><System name="Microsoft.About" /></Settings><Buttons><ButtonLockdownList><Button name="Start"><ButtonEvent name="Press" /><ButtonEvent name="PressAndHold" /></Button><Button name="Camera"><ButtonEvent name="Press" /><ButtonEvent name="PressAndHold" /></Button></ButtonLockdownList><ButtonRemapList/></Buttons><MenuItems><DisableMenuItems/></MenuItems></Role><Role guid="{8ABB8A10-4418-4467-9E18-99D11FA54E30}" name="Manager"><Apps><Application productId="{5B04B775-356B-4AA0-AAF8-6491FFEA5612}" pinToStart="1"/></Apps><Settings><System name="Microsoft.Themes" /></Settings><Buttons><ButtonLockdownList><Button name="Start"><ButtonEvent name="Press" /><ButtonEvent name="PressAndHold" /></Button></ButtonLockdownList><ButtonRemapList/></Buttons><MenuItems><DisableMenuItems/></MenuItems></Role></RoleList></HandheldLockdown>"/>
    </characteristic>
  </characteristic>
</wap-provisioningdoc>
```

### Language

The following example shows how to specify the language to display on the device.

```xml
<wap-provisioningdoc>
   <characteristic type="EnterpriseAssignedAccess">
  <characteristic type="Language">
      <parm name="Language" datatype="string"
   <parm name="Language" value="1033" />
   </characteristic>
</wap-provisioningdoc>
```

## OMA DM examples


These XML examples show how to perform various tasks using OMA DM.

### Assigned access settings

The following example shows how to lock down a device.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
   <SyncBody>
      <Add>
         <CmdID>2</CmdID>
         <Item>
            <Target>
               <LocURI>./Vendor/MSFT/EnterpriseAssignedAccess/AssignedAccess/AssignedAccessXml</LocURI>
            </Target>
            <Data><?xml version="1.0" encoding="utf-8"?><HandheldLockdown version="1.0"><Default><Apps><Application productId="{5B04B775-356B-4AA0-AAF8-6491FFEA5615}" pinToStart="1"/><Application productId="{5B04B775-356B-4AA0-AAF8-6491FFEA5612}" pinToStart="2"/></Apps><Settings><System name="Microsoft.Themes" /><System name="Microsoft.About" /></Settings><Buttons><Button name="Start" disableEvents="PressAndHold" /><Button name="Camera" disableEvents="All" /><Button name="Search" disableEvents="All" /></Buttons><MenuItems><DisableMenuItems/></MenuItems></Default><RoleList><Role guid="{76C01983-A872-4C4E-B4C6-321EAC709CEA}" name="Associate"><Apps><Application productId="{5B04B775-356B-4AA0-AAF8-6491FFEA5615}" pinToStart="1"/></Apps><Settings><System name="Microsoft.Themes" /><System name="Microsoft.About" /></Settings><Buttons><Button name="Start" disableEvents="PressAndHold" /><Button name="Camera" disableEvents="All" /></Buttons><MenuItems><DisableMenuItems/></MenuItems></Role><Role guid="{8ABB8A10-4418-4467-9E18-99D11FA54E30}" name="Manager"><Apps><Application productId="{5B04B775-356B-4AA0-AAF8-6491FFEA5612}" pinToStart="1"/></Apps><Settings><System name="Microsoft.Themes" /></Settings><Buttons><Button name="Start" disableEvents="PressAndHold" /></Buttons><MenuItems><DisableMenuItems/></MenuItems></Role></RoleList></HandheldLockdown></Data>
         </Item>
      </Add>
      <Final/>
   </SyncBody>
</SyncML>
```

### Theme

The following example shows how to change the accent color to one of the standard colors.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
   <SyncBody>
      <Replace>
         <CmdID>1</CmdID>
         <Item>
            <Target>
             <LocURI>./Vendor/MSFT/EnterpriseAssignedAccess/Theme/ThemeAccentColorID</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <!-- zero based index of available theme colors -->
            <Data>7</Data>
         </Item>
      </Replace>
      <Final/>
   </SyncBody>
</SyncML>
```

The following example shows how to change the theme.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
   <SyncBody>
       <Replace>
           <CmdID>1</CmdID>
           <Item>
               <Target>
                   <LocURI>./Vendor/MSFT/EnterpriseAssignedAccess/Theme/ThemeBackground</LocURI>
               </Target>
               <Meta>
                   <Format xmlns="syncml:metinf">int</Format>
               </Meta>
               <!-- 0 for "light", 1 for "dark" -->
               <Data>1</Data>
           </Item>
       </Replace>
       <Final/>
   </SyncBody>
</SyncML>
```

The following example shows how to set a custom theme accent color for the enterprise environment.

```xml
<SyncBody>
   <Replace>
      <CmdID>1</CmdID>
      <Item>
         <Target>
             <LocURI>./Vendor/MSFT/EnterpriseAssignedAccess/Theme/ThemeAccentColorID</LocURI>
         </Target>
         <Meta>
            <Format xmlns="syncml:metinf">int</Format>
         </Meta>
         <!—set to Enterprise custom -->
         <Data>151</Data>
      </Item>
   </Replace>
   <Replace>
      <CmdID>2</CmdID>
      <Item>
         <Target>
            <LocURI>./Vendor/MSFT/EnterpriseAssignedAccess/Theme/ThemeAccentColorValue</LocURI>
         </Target>
         <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
         </Meta>
         <!—sets custom accent color of red -->
         <Data>FF0000</Data>
      </Item>
   </Replace>
   <Final/>
</SyncBody>
```

### Lock screen

Use the examples in this section to set a new lock screen and manage the lock screen features. If using a UNC path, format the LocURI as \\\\host\\share\\image.jpg.

```xml
<Add>
  <CmdID>2</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/EnterpriseAssignedAccess/LockScreenWallpaper/BGFileName</LocURI>
    <Meta>
      <Format xmlns="syncml:metinf">chr</Format>
      <Type xmlns="syncml:metinf">text/plain</Type>
    </Meta>
    <Data>c:\windows\system32\lockscreen\480x800\Wallpaper_015.jpg </Data>
    </Target>
  </Item>
</Add>
```

The following example shows how to query the device for the file being used as the lock screen.

```xml
<Get>
  <CmdID>2</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/EnterpriseAssignedAccess/LockScreenWallpaper/BGFileName</LocURI>
    </Target>
  </Item>
</Get>
```

The following example shows how to change the existing lock screen image to one of your choosing.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
   <SyncBody>
      <Replace>
         <CmdID>2</CmdID>
         <Item>
            <Target>
               <LocURI>./Vendor/MSFT/EnterpriseAssignedAccess/LockScreenWallpaper/BGFileName</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">chr</Format>
               <Type xmlns="syncml:metinf">text/plain</Type>
            </Meta>
            <Data>c:\windows\system32\lockscreen\480x800\Wallpaper_015.jpg</Data>
         </Item>
      </Replace>
      <Final/>
   </SyncBody>
</SyncML>
```

### Time zone

The following example shows how to set the time zone to UTC-07 Mountain Time (US & Canada).

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
   <SyncBody>
      <Replace>
         <CmdID>2</CmdID>
         <Item>
            <Target>
               <LocURI>./Vendor/MSFT/EnterpriseAssignedAccess/Clock/TimeZone</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <Data>500</Data>
         </Item>
      </Replace>
      <Final/>
   </SyncBody>
</SyncML>
```

The following example shows how to set the time zone to Pacific Standard Time (UTC-08:00) without observing daylight savings time (UTC+01:00).

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
   <SyncBody>
      <Replace>
         <CmdID>2</CmdID>
         <Item>
            <Target>
               <LocURI>./Vendor/MSFT/EnterpriseAssignedAccess/Clock/TimeZone</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <Data>400 </Data>
         </Item>
      </Replace>
      <Final/>
   </SyncBody>
</SyncML>
```

### Language

The following example shows how to set the language.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
   <SyncBody>
      <Replace>
         <CmdID>1</CmdID>
         <Item>
            <Target>
               <LocURI>./Vendor/MSFT/EnterpriseAssignedAccess/Locale/Language</LocURI>
            </Target>
            <Meta>
               <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <Data>1033</Data>
         </Item>
      </Replace>
      <Final/>
   </SyncBody>
</SyncML>
```

## <a href="" id="productid"></a>Product IDs in Windows 10 Mobile

The following table lists the product ID and AUMID for each app that is included in Windows 10 Mobile.

|App|Product ID|AUMID|
|--- |--- |--- |
|Alarms and clock|44F7D2B4-553D-4BEC-A8B7-634CE897ED5F|Microsoft.WindowsAlarms_8wekyb3d8bbwe!App|
|Calculator|B58171C6-C70C-4266-A2E8-8F9C994F4456|Microsoft.WindowsCalculator_8wekyb3d8bbwe!App|
|Camera|F0D8FEFD-31CD-43A1-A45A-D0276DB069F1|Microsoft.WindowsCamera_8wekyb3d8bbwe!App|
|Contact Support|0DB5FCFF-4544-458A-B320-E352DFD9CA2B|Windows.ContactSupport_cw5n1h2txyewy!App|
|Cortana|FD68DCF4-166F-4C55-A4CA-348020F71B94|Microsoft.Windows.Cortana_cw5n1h2txyewy!CortanaUI|
|Excel|EAD3E7C0-FAE6-4603-8699-6A448138F4DC|Microsoft.Office.Excel_8wekyb3d8bbwe!microsoft.excel|
|Facebook|82A23635-5BD9-DF11-A844-00237DE2DB9E|Microsoft.MSFacebook_8wekyb3d8bbwe!x82a236355bd9df11a84400237de2db9e|
|File Explorer|C5E2524A-EA46-4F67-841F-6A9465D9D515|c5e2524a-ea46-4f67-841f-6a9465d9d515_cw5n1h2txyewy!App|
|FM Radio|F725010E-455D-4C09-AC48-BCDEF0D4B626|N/A|
|Get Started|B3726308-3D74-4A14-A84C-867C8C735C3C|Microsoft.Getstarted_8wekyb3d8bbwe!App|
|Groove Music|D2B6A184-DA39-4C9A-9E0A-8B589B03DEC0|Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic|
|Maps|ED27A07E-AF57-416B-BC0C-2596B622EF7D|Microsoft.WindowsMaps_8wekyb3d8bbwe!App|
|Messaging|27E26F40-E031-48A6-B130-D1F20388991A|Microsoft.Messaging_8wekyb3d8bbwe!x27e26f40ye031y48a6yb130yd1f20388991ax|
|Microsoft Edge|395589FB-5884-4709-B9DF-F7D558663FFD|Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge|
|Money|1E0440F1-7ABF-4B9A-863D-177970EEFB5E|Microsoft.BingFinance_8wekyb3d8bbwe!AppexFinance|
|Movies and TV|6AFFE59E-0467-4701-851F-7AC026E21665|Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo|
|News|9C3E8CAD-6702-4842-8F61-B8B33CC9CAF1|Microsoft.BingNews_8wekyb3d8bbwe!AppexNews|
|OneDrive|AD543082-80EC-45BB-AA02-FFE7F4182BA8|Microsoft.MicrosoftSkydrive_8wekyb3d8bbwe!App|
|OneNote|CA05B3AB-F157-450C-8C49-A1F127F5E71D|Microsoft.Office.OneNote_8wekyb3d8bbwe!microsoft.onenoteim|
|Outlook Calendar|A558FEBA-85D7-4665-B5D8-A2FF9C19799B|Microsoft.WindowsCommunicationsApps_8wekyb3d8bbwe!Microsoft.WindowsLive.Calendar|
|Outlook Mail|A558FEBA-85D7-4665-B5D8-A2FF9C19799B|Microsoft.WindowsCommunicationsApps_8wekyb3d8bbwe!Microsoft.WindowsLive.Mail|
|People|60BE1FB8-3291-4B21-BD39-2221AB166481|Microsoft.People_8wekyb3d8bbwe!xb94d6231y84ddy49a8yace3ybc955e769e85x|
|Phone (dialer)|F41B5D0E-EE94-4F47-9CFE-3D3934C5A2C7|Microsoft.CommsPhone_8wekyb3d8bbwe!App|
|Photos|FCA55E1B-B9A4-4289-882F-084EF4145005|Microsoft.Windows.Photos_8wekyb3d8bbwe!App|
|Podcasts|C3215724-B279-4206-8C3E-61D1A9D63ED3|Microsoft.MSPodcast_8wekyb3d8bbwe!xc3215724yb279y4206y8c3ey61d1a9d63ed3x|
|PowerPoint|B50483C4-8046-4E1B-81BA-590B24935798|Microsoft.Office.PowerPoint_8wekyb3d8bbwe!microsoft.pptim|
|Settings|2A4E62D8-8809-4787-89F8-69D0F01654FB|2a4e62d8-8809-4787-89f8-69d0f01654fb_8wekyb3d8bbwe!App|
|Skype|C3F8E570-68B3-4D6A-BDBB-C0A3F4360A51|Microsoft.SkypeApp_kzf8qxf38zg5c!Skype.AppId|
|Skype Video|27E26F40-E031-48A6-B130-D1F20388991A|Microsoft.Messaging_8wekyb3d8bbwe!App|
|Sports|0F4C8C7E-7114-4E1E-A84C-50664DB13B17|Microsoft.BingSports_8wekyb3d8bbwe!AppexSports|
|Storage|5B04B775-356B-4AA0-AAF8-6491FFEA564D|N/A|
|Store|7D47D89A-7900-47C5-93F2-46EB6D94C159|Microsoft.WindowsStore_8wekyb3d8bbwe!App|
|Voice recorder|7311B9C5-A4E9-4C74-BC3C-55B06BA95AD0|Microsoft.WindowsSoundRecorder_8wekyb3d8bbwe!App|
|Wallet|587A4577-7868-4745-A29E-F996203F1462|Microsoft.MicrosoftWallet_8wekyb3d8bbwe!App|
|Weather|63C2A117-8604-44E7-8CEF-DF10BE3A57C8|Microsoft.BingWeather_8wekyb3d8bbwe!App|
|Windows Feedback|7604089D-D13F-4A2D-9998-33FC02B63CE3|Microsoft.WindowsFeedback_8wekyb3d8bbwe!App|
|Word|258F115C-48F4-4ADB-9A68-1387E634459B|Microsoft.Office.Word_8wekyb3d8bbwe!microsoft.word|
|Xbox|B806836F-EEBE-41C9-8669-19E243B81B83|Microsoft.XboxApp_8wekyb3d8bbwe!Microsoft.XboxApp|
