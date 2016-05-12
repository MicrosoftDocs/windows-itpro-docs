---
title: Configure Windows 10 Mobile using Lockdown XML (Windows 10)
description: Windows 10 Mobile allows enterprises to lock down a device, define multiple user roles, and configure custom layouts on a device.
ms.assetid: 22C8F654-2EC3-4E6D-8666-1EA9FCF90F5F
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Configure Windows 10 Mobile using Lockdown XML


**Applies to**

-   Windows 10 Mobile

Windows 10 Mobile allows enterprises to lock down a device, define multiple user roles, and configure custom layouts on a device. For example, the enterprise can lock down a device so that only applications and settings in an allow list are available.

This topic provides example XML that you can use in your own lockdown XML file that can be included in a provisioning package or when using a mobile device management (MDM) solution to push lockdown settings to enrolled devices.

After you apply the lockdown settings, the lockdown configuration is stored in a wehlockdown.xml file on the device.

For details on each of the configuration items, see the AssignedAccess/AssignedAccessXml section of the [EnterpriseAssignedAccess configuration service provider (CSP) reference](http://go.microsoft.com/fwlink/p/?LinkID=618601).

## Order of lockdown settings


The configuration items must be in the following order when you lock down settings:

-   Default profile
    -   ActionCenter
    -   Apps
        -   Application product ID, as described in [Product IDs in Windows 10 Mobile](http://go.microsoft.com/fwlink/p/?LinkId=698449)
        -   App User Model ID, as described in [Configuring Multiple App Packages](#bmk-map)
        -   PinToStart
            -   Size
            -   Location
    -   Buttons
        -   ButtonLockdownList
            -   Button name
        -   ButtonRemapList
            -   Button name
                -   Button event name
                    -   Application product ID, as described in [Product IDs in Windows 10 Mobile](http://go.microsoft.com/fwlink/p/?LinkId=698449)
    -   CSPRunner
        -   SyncML
    -   MenuItems
        -   Disable menu items
    -   Settings
        -   System name, as described in [Settings and quick actions that can be locked down](settings-that-can-be-locked-down.md)
    -   Tiles
        -   Enable tile manipulation
    -   StartScreenSize
-   RoleList
    -   Role (repeat for each role)
        -   ActionCenter
        -   Apps
            -   Application product ID, as described in [Product IDs in Windows 10 Mobile](http://go.microsoft.com/fwlink/p/?LinkId=698449)
            -   App User Model ID (AUMID), as described in [Configuring Multiple App Packages](#bmk-map)
            -   PinToStart
                -   Size
                -   Location
        -   Buttons
            -   ButtonLockdownList
                -   Button name
            -   ButtonRemapList
                -   Button name
                    -   Button event name
                        -   Application product ID, as described in [Product IDs in Windows 10 Mobile](http://go.microsoft.com/fwlink/p/?LinkId=698449)
        -   CSPRunner
            -   SyncML
        -   MenuItems
            -   Disable menu items
        -   Settings
            -   System name, as described in [Settings and quick actions that can be locked down](settings-that-can-be-locked-down.md)
        -   Tiles
            -   Enable tile manipulation
        -   StartScreenSize

## <a href="" id="bmk-map"></a>Configuring multiple app packages


Multiple app packages enable multiple apps to exist inside the same package. Since product IDs identify packages and not applications, specifying a product ID is not enough to distinguish between individual apps inside a multiple app package. Trying to pin application tiles from a multiple app package with just a product ID can result in unexpected behavior.

To support pinning applications in multiple app packages, an AUMID parameter can be specified in lockdown.xml.

The following example shows how to pin both Outlook Mail and Outlook Calendar:

```
<Apps>
    <!-- Outlook Calendar -->
    <Application productId="{A558FEBA-85D7-4665-B5D8-A2FF9C19799B}" aumid="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar">
        <PinToStart>
            <Size>Large</Size>
            <Location>
                <LocationX>1</LocationX>
                <LocationY>4</LocationY>
            </Location>
        </PinToStart>
    </Application>
    <!-- Outlook Mail-->
    <Application productId="{A558FEBA-85D7-4665-B5D8-A2FF9C19799B}" aumid="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail">
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

## Lockdown example to use in a lockdown XML file


The XML example can be used as a lockdown file that is contained in a provisioning package created in Windows Imaging and Configuration Designer (ICD). However, if you use MDM to push the lockdown file directly to devices, the XML example must use escaped characters for lockdown (such as &lt; in place of &lt;) as a result of XML embedded in XML. You can easily find an online escape tool to help you with this process.

```
<?xml version="1.0" encoding="utf-8"?>
<HandheldLockdown version="1.0" >
    <Default>
        <ActionCenter enabled="true" />
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
            <!-- Outlook Calendar -->
            <Application productId="{A558FEBA-85D7-4665-B5D8-A2FF9C19799B}" aumid="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar">
                <PinToStart>
                    <Size>Small</Size>
                    <Location>
                        <LocationX>0</LocationX>
                        <LocationY>2</LocationY>
                    </Location>
                </PinToStart>
            </Application>
            <!-- Photos -->
            <Application productId="{FCA55E1B-B9A4-4289-882F-084EF4145005}">
                <PinToStart>
                    <Size>Medium</Size>
                    <Location>
                        <LocationX>2</LocationX>
                        <LocationY>2</LocationY>
                    </Location>
                </PinToStart>
            </Application>
            <!-- Edge -->
            <Application productId="{395589FB-5884-4709-B9DF-F7D558663FFD}" />
            <!-- Login App -->
            <Application productId="{C85DC60D-30D4-4C67-A4B4-58282F1D152C}" />
        </Apps>
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
            <ButtonRemapList>
                <Button name="Search">
                    <ButtonEvent name="Press">
                        <!-- Edge-->
                        <Application productId="{395589FB-5884-4709-B9DF-F7D558663FFD}" parameters="" />
                    </ButtonEvent>
                </Button>
            </ButtonRemapList>
        </Buttons>
        <CSPRunner>
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
                            <Data>c:\windows\system32\lockscreen\480x800\Wallpaper_05.jpg</Data>
                        </Item>
                    </Replace>
                    <Final/>
                </SyncBody>
            </SyncML>
        </CSPRunner>
        <MenuItems>
            <DisableMenuItems/>
        </MenuItems>
        <Settings>
            <!-- Quick actions: Brightness, Rotation -->
            <System name="SystemSettings_System_Display_QuickAction_Brightness"/>
            <System name="SystemSettings_System_Display_Internal_Rotation"/>
            <!-- Brightness+Rotation, About -->
            <System name="SettingsPageGroupPCSystem"/>
            <System name="SettingsPageDisplay"/>
            <System name="SettingsPagePCSystemInfo"/>
            <!-- Ringtones, sounds -->
            <System name="SettingsPageGroupPersonalization"/>
            <System name="SettingsPageSounds"/>
        </Settings>
        <Tiles>
            <EnableTileManipulation/>
        </Tiles>
        <StartScreenSize>Small</StartScreenSize>
    </Default>
    <RoleList>
        <Role guid="{88501844-3b51-4c9f-9da7-7ca745e7da6b}" name="Associate">
            <ActionCenter enabled="0"/>
            <Apps>
                <!-- Settings -->
                <Application productId="{2A4E62D8-8809-4787-89F8-69D0F01654FB}">
                    <PinToStart>
                        <Size>Small</Size>
                        <Location>
                            <LocationX>0</LocationX>
                            <LocationY>0</LocationY>
                        </Location>
                    </PinToStart>
                </Application>
                <!-- Outlook Calendar -->
                <Application productId="{A558FEBA-85D7-4665-B5D8-A2FF9C19799B}" aumid="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar">
                    <PinToStart>
                        <Size>Large</Size>
                        <Location>
                            <LocationX>0</LocationX>
                            <LocationY>2</LocationY>
                        </Location>
                    </PinToStart>
                </Application>
                <!-- Login App -->
                <Application productId="{C85DC60D-30D4-4C67-A4B4-58282F1D152C}" />
            </Apps>
            <Buttons />
            <CSPRunner>
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
                                <Data>10</Data>
                            </Item>
                        </Replace>
                        <Final/>
                    </SyncBody>
                </SyncML>
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
                                <Data>0</Data>
                            </Item>
                        </Replace>
                        <Final/>
                    </SyncBody>
                </SyncML>
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
                                <Data>c:\windows\system32\lockscreen\480x800\Wallpaper_08.jpg</Data>
                            </Item>
                        </Replace>
                        <Final/>
                    </SyncBody>
                </SyncML>
            </CSPRunner>
            <MenuItems>
                <DisableMenuItems/>
            </MenuItems>
            <Settings>
                <!-- Brightness+Rotation, Notifications, About -->
                <System name="SettingsPageGroupPCSystem"/>
                <System name="SettingsPageAppsNotifications"/>
                <System name="SettingsPageDisplay"/>
                <System name="SettingsPagePCSystemInfo"/>
                <!-- Ringtones, sounds -->
                <System name="SettingsPageGroupPersonalization"/>
                <System name="SettingsPageSounds"/>
                <!-- Workplace -->
                <System name="SettingsPageGroupAccounts"/>
                <System name="SettingsPageAccountsWorkplace"/>
            </Settings>
        </Role>
        <Role guid="{7bb62e8c-81ba-463c-b691-74af68230b42}" name="Manager">
            <ActionCenter enabled="true" />
            <Apps>
                <!-- Alarms and Clock -->
                <Application productId="{44F7D2B4-553D-4BEC-A8B7-634CE897ED5F}">
                    <PinToStart>
                        <Size>Small</Size>
                        <Location>
                            <LocationX>0</LocationX>
                            <LocationY>0</LocationY>
                        </Location>
                    </PinToStart>
                </Application>
                <!-- Settings -->
                <Application productId="{2A4E62D8-8809-4787-89F8-69D0F01654FB}">
                    <PinToStart>
                        <Size>Small</Size>
                        <Location>
                            <LocationX>1</LocationX>
                            <LocationY>0</LocationY>
                        </Location>
                    </PinToStart>
                </Application>
                <!-- Outlook Calendar -->
                <Application productId="{A558FEBA-85D7-4665-B5D8-A2FF9C19799B}" aumid="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar">
                    <PinToStart>
                        <Size>Medium</Size>
                        <Location>
                            <LocationX>2</LocationX>
                            <LocationY>0</LocationY>
                        </Location>
                    </PinToStart>
                </Application>
                <!-- Calculator -->
                <Application productId="{B58171C6-C70C-4266-A2E8-8F9C994F4456}" />
                <!-- Photos -->
                <Application productId="{FCA55E1B-B9A4-4289-882F-084EF4145005}">
                    <PinToStart>
                        <Size>Small</Size>
                        <Location>
                            <LocationX>0</LocationX>
                            <LocationY>2</LocationY>
                        </Location>
                    </PinToStart>
                </Application>
                <!-- Store -->
                <Application productId="{7D47D89A-7900-47C5-93F2-46EB6D94C159}">
                    <PinToStart>
                        <Size>Medium</Size>
                        <Location>
                            <LocationX>2</LocationX>
                            <LocationY>2</LocationY>
                        </Location>
                    </PinToStart>
                </Application>
                <!-- Login App -->
                <Application productId="{C85DC60D-30D4-4C67-A4B4-58282F1D152C}" />
            </Apps>
            <Buttons />
            <CSPRunner>
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
                                <Data>2</Data>
                            </Item>
                        </Replace>
                        <Final/>
                    </SyncBody>
                </SyncML>
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
            </CSPRunner>
            <MenuItems>
                <DisableMenuItems/>
            </MenuItems>
            <Settings>
                <!-- Allow all settings -->
            </Settings>
            <Tiles>
                <EnableTileManipulation/>
            </Tiles>
        </Role>
    </RoleList>
</HandheldLockdown>
```

## Add lockdown XML to a provisioning package


Use the Windows ICD tool included in the Windows Assessment and Deployment Kit (ADK) for Windows 10 to create a provisioning package. [Install the ADK.](http://go.microsoft.com/fwlink/p/?LinkId=526740)

1.  Follow the instructions at [Build and apply a provisioning package](http://go.microsoft.com/fwlink/p/?LinkID=629651) to create a project, selecting **Common to all Windows mobile editions** for your project.

2.  In **Available customizations**, go to **Runtime settings** &gt; **EmbeddedLockdownProfiles** &gt; **AssignedAccessXml**.

3.  In the center pane, click **Browse** to locate and select the lockdown XML file that you created.

    ![browse button](images/icdbrowse.png)

4.  On the **File** menu, select **Save.**

5.  On the **Export** menu, select **Provisioning package**.

6.  Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

7.  Optional. In the **Provisioning package security** window, you can choose to encrypt the package and enable package signing.

    -   **Enable package encryption** - If you select this option, an auto-generated password will be shown on the screen.

    -   **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by clicking **Select** and choosing the certificate you want to use to sign the package.

8.  Click **Next** to specify the output location where you want the provisioning package to go when it's built. By default, Windows ICD uses the project folder as the output location.

    Optionally, you can click **Browse** to change the default output location.

9.  Click **Next**.

10. Click **Build** to start building the package. The provisioning package doesn't take long to build. The project information is displayed in the build page and the progress bar indicates the build status.

    If you need to cancel the build, click **Cancel**. This cancels the current build process, closes the wizard, and takes you back to the **Customizations Page**.

11. If your build fails, an error message will show up that includes a link to the project folder. You can scan the logs to determine what caused the error. Once you fix the issue, try building the package again.

    If your build is successful, the name of the provisioning package, output directory, and project directory will be shown.

    -   If you choose, you can build the provisioning package again and pick a different path for the output package. To do this, click **Back** to change the output package name and path, and then click **Next** to start another build.
    -   If you are done, click **Finish** to close the wizard and go back to the **Customizations Page**.

After you build the provisioning package, follow the instructions for [applying a provisioning package at runtime to Windows 10 Mobile](http://go.microsoft.com/fwlink/p/?LinkID=619164).

## Push lockdown XML using MDM


After you deploy your devices, you can still configure lockdown settings through your MDM solution if it supports the [EnterpriseAssignedAccess CSP](http://go.microsoft.com/fwlink/p/?LinkID=618601).

To push lockdown settings to enrolled devices, use the AssignedAccessXML setting and use the lockdown XML as the value. The lockdown XML will be in a HandheldLockdown section that becomes XML embedded in XML, so the XML that you enter must use escaped characters (such as &lt; in place of &lt;). After the MDM provider pushes your lockdown settings to the device, the CSP processes the file and updates the device.

## Learn more

[Customizing Your Device Experience with Assigned Access](https://channel9.msdn.com/Events/Build/2016/P508)

## Related topics


[Settings and quick actions that can be locked down in Windows 10 Mobile](settings-that-can-be-locked-down.md)

[Product IDs in Windows 10 Mobile](product-ids-in-windows-10-mobile.md)

 

 





