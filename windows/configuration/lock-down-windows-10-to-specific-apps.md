---
title: Create a Windows 10 kiosk that runs multiple apps (Windows 10)
description: Learn how to configure a kiosk device running Windows 10 so that users can only run a few specific apps.
ms.assetid: 14DDDC96-88C7-4181-8415-B371F25726C8
keywords: ["lockdown", "app restrictions", "applocker"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: edu, security
author: jdeckerms
ms.localizationpriority: high
ms.date: 10/05/2017
ms.author: jdecker
---

# Create a Windows 10 kiosk that runs multiple apps


**Applies to**

-   Windows 10

A [kiosk device](set-up-a-kiosk-for-windows-10-for-desktop-editions.md) typically runs a single app, and users are prevented from accessing any features or functions on the device outside of the kiosk app. In Windows 10, version 1709, the [AssignedAccess configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/assignedaccess-csp) has been expanded to make it easy for administrators to create kiosks that run more than one app. You can configure multi-app kiosks using a provisioning package.

>[!NOTE]
>For devices running versions of Windows 10 earlier than version 1709, you can [create AppLocker rules](lock-down-windows-10-applocker.md) to configure a multi-app kiosk. 

The benefit of a multi-app kiosk, or fixed-purpose device, is to provide an easy-to-understand experience for individuals by putting in front of them only the things they need to use, and removing from their view the things they don’t need to access. 

>[!WARNING]
>The assigned access feature is intended for corporate-owned fixed-purpose devices, like kiosks. When the multi-app assigned access configuration is applied on the device, certain policies are enforced system-wide, and will impact other users on the device. Deleting the multi-app configuration will remove the assigned access lockdown profiles associated with the users, but it cannot revert all the enforced policies (such as Start layout). A factory reset is needed to clear all the policies enforced via assigned access.


Process:
1. [Create XML file](#create-xml-file)
2. [Add XML file to provisioning package](#add-xml)
3. [Apply provisioning package to device](#apply-ppkg)

If you don't want to use a provisioning package, you can deploy the configuration XML file using [mobile device management (MDM)](#alternate-methods) or you can configure assigned access using the [MDM Bridge WMI Provider](#bridge).

## Prerequisites

- Windows Configuration Designer (Windows 10, version 1709)
- The kiosk device must be running Windows 10 (S, Pro, Enterprise, or Education), version 1709


## Create XML file

Let's start by looking at the basic structure of the XML file. 

- A configuration xml can define multiple *profiles*. Each profile has a unique **Id** and defines a set of applications that are allowed to run, whether the taskbar is visible, and can include a custom Start layout. 

- A configuration xml can have multiple *config* sections. Each config section associates a non-admin user account to a default profile **Id**. 

- Multiple config sections can be associated to the same profile.

- A profile has no effect if it’s not associated to a config section. 

    ![profile = app and config = account](images/profile-config.png)
    
You can start your file by pasting the following XML (or any other examples in this topic) into a XML editor, and saving the file as *filename*.xml. Each section of this XML is explained in this topic. 

```xml
<?xml version="1.0" encoding="utf-8" ?>
<AssignedAccessConfiguration xmlns="http://schemas.microsoft.com/AssignedAccess/2017/config">
    <Profiles>
        <Profile Id="">
            <AllAppsList>
                <AllowedApps/>
            </AllAppsList>         
            <StartLayout/>
            <Taskbar/>
        </Profile>
    </Profiles>
    <Configs>
        <Config>
            <Account/>
            <DefaultProfile Id=""/>
        </Config>
    </Configs>
</AssignedAccessConfiguration>
```

### Profile

A profile section in the XML has the following entries: 

- [**Id**](#id) 

- [**AllowedApps**](#allowedapps)  

- [**StartLayout**](#startlayout)

- [**Taskbar**](#taskbar)


#### Id

The profile **Id** is a GUID attribute to uniquely identify the profile. You can create a GUID using a GUID generator. The GUID just needs to be unique within this XML file. 

```xml
<Profiles>
  <Profile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}">…</Profile>
</Profiles>
```

#### AllowedApps

**AllowedApps** is a list of applications that are allowed to run. Apps can be Universal Windows Platform (UWP) apps or Classic Windows desktop apps. 

Based on the purpose of the kiosk device, define the list of applications that are allowed to run. This list can contain both UWP apps and desktop apps. When the mult-app kiosk configuration is applied to a device, AppLocker rules will be generated to allow the apps that are listed in the configuration.

>[!NOTE]
>You cannot manage AppLocker rules that are generated by the multi-app kiosk configuration in [MMC snap-ins](https://technet.microsoft.com/library/hh994629.aspx#BKMK_Using_Snapins). Avoid applying AppLocker rules to devices running the multi-app kiosk configuration.

- For UWP apps, you need to provide the App User Model ID (AUMID). [Learn how to get the AUMID](https://go.microsoft.com/fwlink/p/?LinkId=614867), or [get the AUMID from the Start Layout XML](#startlayout). 
- For desktop apps, you need to specify the full path of the executable, which can contain one or more system environment variables in the form of %variableName% (i.e. %systemroot%, %windir%).

Here are the predefined assigned access AppLocker rules for **UWP apps**:   

1.	Default rule is to allow all users to launch the signed package apps. 
2.	The package app deny list is generated at runtime when the assigned access user signs in. Based on the installed/provisioned package apps available for the user account, assigned access generates the deny list. This list will exclude the default allowed inbox package apps which are critical for the system to function, and then exclude the allowed packages that enterprises defined in the assigned access configuration. If there are multiple apps within the same package, all these apps will be excluded. This deny list will be used to prevent the user from accessing the apps which are currently available for the user but not in the allowed list. 

    >[!NOTE]
    >Multi-app kiosk mode doesn’t block the enterprise or the users from installing UWP apps. When a new UWP app is installed during the current assigned access user session, this app will not be in the deny list. When the user signs out and signs in again, the app will be included in the deny list. If this is an enterprise-deployed line-of-business app and you want to allow it to run, update the assigned access configuration to include it in the allowed app list. 

Here are the predefined assigned access AppLocker rules for **desktop apps**:

1.	Default rule is to allow all users to launch the desktop programs signed with Microsoft Certificate in order for the system to boot and function. The rule also allows the admin user group to launch all desktop programs. 
2.	There is a predefined inbox desktop app deny list for the assigned access user account, and this deny list is adjusted based on the desktop app allow list that you defined in the multi-app configuration. 
3.	Enterprise-defined allowed desktop apps are added in the AppLocker allow list. 

The following example allows Groove Music, Movies & TV, Photos, Weather, Calculator, Paint, and Notepad apps to run on the device.

```xml
<AllAppsList>
        <AllowedApps>
          <App AppUserModelId="Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic" />
          <App AppUserModelId="Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo" />
          <App AppUserModelId="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
          <App AppUserModelId="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
          <App AppUserModelId="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
          <App DesktopAppPath="%windir%\system32\mspaint.exe" />
          <App DesktopAppPath="C:\Windows\System32\notepad.exe" />
        </AllowedApps>
</AllAppsList>
```

#### StartLayout

After you define the list of allowed applications, you can customize the Start layout for your kiosk experience. You can choose to pin all the allowed apps on the Start screen or just a subset, depending on whether you want the end user to directly access them on the Start screen. 

The easiest way to create a customized Start layout to apply to other Windows 10 devices is to set up the Start screen on a test device and then export the layout. For detailed steps, see [Customize and export Start layout](customize-and-export-start-layout.md).

A few things to note here:

- The test device on which you customize the Start layout should have the same OS version that is installed on the device where you plan to deploy the multi-app assigned access configuration. 
- Since the multi-app assigned access experience is intended for fixed-purpose devices, to ensure the device experiences are consistent and predictable, use the *full* Start layout option instead of the *partial* Start layout. 
- There are no apps pinned on the taskbar in the multi-app mode, and it is not supported to configure Taskbar layout using the `<CustomTaskbarLayoutCollection>` tag in a layout modification XML as part of the assigned access configuration.
- The following example uses DesktopApplicationLinkPath to pin the desktop app to start. When the desktop app doesn’t have a shortcut link on the target device, [learn how to provision .lnk files using Windows Configuration Designer](#lnk-files). 

This example pins Groove Music, Movies & TV, Photos, Weather, Calculator, Paint, and Notepad apps on Start.

```xml
<StartLayout>
        <![CDATA[<LayoutModificationTemplate xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout" Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
                      <LayoutOptions StartTileGroupCellWidth="6" />
                      <DefaultLayoutOverride>
                        <StartLayoutCollection>
                          <defaultlayout:StartLayout GroupCellWidth="6">
                            <start:Group Name="Group1">
                              <start:Tile Size="4x4" Column="0" Row="0" AppUserModelID="Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic" />
                              <start:Tile Size="2x2" Column="4" Row="2" AppUserModelID="Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo" />
                              <start:Tile Size="2x2" Column="4" Row="0" AppUserModelID="Microsoft.Windows.Photos_8wekyb3d8bbwe!App" />
                              <start:Tile Size="2x2" Column="4" Row="4" AppUserModelID="Microsoft.BingWeather_8wekyb3d8bbwe!App" />
                              <start:Tile Size="4x2" Column="0" Row="4" AppUserModelID="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App" />
                            </start:Group>
                            <start:Group Name="Group2">
                              <start:DesktopApplicationTile Size="2x2" Column="2" Row="0" DesktopApplicationLinkPath="%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk" />
                              <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationLinkPath="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Accessories\Notepad.lnk" />
                            </start:Group>
                          </defaultlayout:StartLayout>
                        </StartLayoutCollection>
                      </DefaultLayoutOverride>
                    </LayoutModificationTemplate>
                ]]>
</StartLayout>
```

>[!NOTE]
>If an app is not installed for the user but is included in the Start layout XML, the app will not be shown on the Start screen. 


![What the Start screen looks like when the XML sample is applied](images/sample-start.png)

#### Taskbar

Define whether you want to have the taskbar present in the kiosk device. For tablet-based or touch-enabled all-in-one kiosks, when you don’t attach a keyboard and mouse, you can hide the taskbar as part of the multi-app experience if you want. 

The following example exposes the taskbar to the end user:

```xml
<Taskbar ShowTaskbar="true"/>
```
      
The following example hides the taskbar:

```xml
<Taskbar ShowTaskbar="false"/>
```
      
>[!NOTE]
>This is different from the **Automatically hide the taskbar** option in tablet mode, which shows the taskbar when swiping up from or moving the mouse pointer down to the bottom of the screen. Setting **ShowTaskbar** as **false** will always keep the taskbar hidden. 

### Configs

Under **Configs**, define which user account will be associated with the profile. When this user account signs in on the device, the associated assigned access profile will be enforced, including the allowed apps, Start layout, and taskbar configuration, as well as other local group policies or mobile device management (MDM) policies set as part of the multi-app experience. 

The full multi-app assigned access experience can only work for non-admin users. It’s not supported to associate an admin user with the assigned access profile; doing this in the XML file will result in unexpected/unsupported experiences when this admin user signs in.  



The account can be local, domain, or Azure Active Directory (Azure AD). Groups are not supported.
- Local account can be entered as `machinename\account` or `.\account` or just `account`.
- Domain account should be entered as `domain\account`.
- Azure AD account must be specified in this format: `AzureAD\{email address}`. **AzureAD** must be provided AS IS (consider it’s a fixed domain name), then follow with the Azure AD email address, e.g. **AzureAD\someone@contoso.onmicrosoft.com**.

>[!WARNING]
>Assigned access can be configured via WMI or CSP to run its applications under a domain user or service account, rather than a local account.  However, use of domain user or service accounts introduces risks that an attacker subverting the assigned access application might gain access to sensitive domain resources that have been inadvertently left accessible to any domain account. We recommend that customers proceed with caution when using domain accounts with assigned access, and consider the domain resources potentially exposed by the decision to do so.


Before applying the multi-app configuration, make sure the specified user account is available on the device, otherwise it will fail.
 
>[!NOTE]
>For both domain and Azure AD accounts, it’s not required that target account is explicitly added to the device. As long as the device is AD-joined or Azure AD-joined, the account can be discovered in the domain forest or tenant that the device is joined to. For local accounts, it is required that the account exist before you configure the account for assigned access.


```xml
<Configs>
  <Config>
    <Account>MultiAppKioskUser</Account>
    <DefaultProfile Id="{9A2A490F-10F6-4764-974A-43B19E722C23}"/>
  </Config>
</Configs> 
```



<span id="add-xml" />
## Add XML file to provisioning package

Before you add the XML file to a provisioning package, you can [validate your configuration XML against the XSD](multi-app-kiosk-xml.md#xsd-for-assignedaccess-configuration-xml).

Use the Windows Configuration Designer tool to create a provisioning package. [Learn how to install Windows Configuration Designer.](provisioning-packages/provisioning-install-icd.md)

>[!IMPORTANT]
>When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

1.  Open Windows Configuration Designer (by default, %systemdrive%\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\Imaging and Configuration Designer\\x86\\ICD.exe).

2. Choose **Advanced provisioning**.

3. Name your project, and click **Next**.

4. Choose **All Windows desktop editions** and click **Next**.

5. On **New project**, click **Finish**. The workspace for your package opens.

6. Expand **Runtime settings** &gt; **AssignedAccess** &gt; **MultiAppAssignedAccessSettings**.

7. In the center pane, click **Browse** to locate and select the assigned access configuration XML file that you created.

  ![Screenshot of the MultiAppAssignedAccessSettings field in Windows Configuration Designer](images/multiappassignedaccesssettings.png)

8. (**Optional**: If you want to apply the provisioning package after device initial setup and there is an admin user already available on the kiosk device, skip this step.) Create an admin user account in **Runtime settings** &gt; **Accounts** &gt; **Users**. Provide a **UserName** and **Password**, and select **UserGroup** as **Administrators**. With this account, you can view the provisioning status and logs if needed.   

8. (**Optional**: If you already have a non-admin account on the kiosk device, skip this step.) Create a local standard user account in **Runtime settings** &gt; **Accounts** &gt; **Users**. Make sure the **UserName** is the same as the account that you specify in the configuration XML. Select **UserGroup** as **Standard Users**.

8.  On the **File** menu, select **Save.**

9.  On the **Export** menu, select **Provisioning package**.

10. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

11. Optional. In the **Provisioning package security** window, you can choose to encrypt the package and enable package signing.

    -   **Enable package encryption** - If you select this option, an auto-generated password will be shown on the screen.

    -   **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by clicking **Browse** and choosing the certificate you want to use to sign the package.

12. Click **Next** to specify the output location where you want the provisioning package to go when it's built. By default, Windows Imaging and Configuration Designer (ICD) uses the project folder as the output location.

    Optionally, you can click **Browse** to change the default output location.

13. Click **Next**.

14. Click **Build** to start building the package. The provisioning package doesn't take long to build. The project information is displayed in the build page and the progress bar indicates the build status.

    If you need to cancel the build, click **Cancel**. This cancels the current build process, closes the wizard, and takes you back to the **Customizations Page**.

15. If your build fails, an error message will show up that includes a link to the project folder. You can scan the logs to determine what caused the error. Once you fix the issue, try building the package again.

    If your build is successful, the name of the provisioning package, output directory, and project directory will be shown.

    -   If you choose, you can build the provisioning package again and pick a different path for the output package. To do this, click **Back** to change the output package name and path, and then click **Next** to start another build.
    -   If you are done, click **Finish** to close the wizard and go back to the **Customizations Page**.
    
15. Copy the provisioning package to the root directory of a USB drive.

<span id="apply-ppkg" />
## Apply provisioning package to device

Provisioning packages can be applied to a device during the first-run experience (out-of-box experience or "OOBE") and after ("runtime").


### During initial setup, from a USB drive

1. Start with a computer on the first-run setup screen. If the PC has gone past this screen, reset the PC to start over. To reset the PC, go to **Settings** > **Update & security** > **Recovery** > **Reset this PC**.

    ![The first screen to set up a new PC](images/oobe.jpg)

2. Insert the USB drive. Windows Setup will recognize the drive and ask if you want to set up the device. Select **Set up**.

    ![Set up device?](images/setupmsg.jpg)

3. The next screen asks you to select a provisioning source. Select **Removable Media** and tap **Next**.

    ![Provision this device](images/prov.jpg)
    
4. Select the provisioning package (\*.ppkg) that you want to apply, and tap **Next**.

    ![Choose a package](images/choose-package.png)

5. Select **Yes, add it**.

    ![Do you trust this package?](images/trust-package.png)
    

    
### After setup, from a USB drive, network folder, or SharePoint site

1. Sign in with an admin account.
2. Insert the USB drive to a desktop computer, navigate to **Settings** > **Accounts** > **Access work or school** > **Add or remove a provisioning package** > **Add a package**, and select the package to install. 

>[!NOTE]
>if your provisioning package doesn’t include the assigned access user account creation, make sure the account you specified in the multi-app configuration XML exists on the device. 

![add a package option](images/package.png)



### Validate provisioning

-	Go to **Settings** > **Accounts** > **Access work or school**, and then click **Add or remove a provisioning package**. You should see a list of packages that were applied to the device, including the one you applied for the multi-app configuration.
- Optionally, run Event Viewer (eventvwr.exe) and look through logs under **Applications and Services Logs** > **Microsoft** > **Windows** > **Provisioning-Diagnostics-Provider** > **Admin**.


<span id="alternate-methods" />
## Use MDM to deploy the multi-app configuration 


Multi-app kiosk mode is enabled by the [AssignedAccess configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/assignedaccess-csp). Your MDM policy can contain the assigned access configuration XML. 

If your device is enrolled with a MDM server which supports applying the assigned access configuration, you can use it to apply the setting remotely. 

The OMA-URI for multi-app policy is `./Device/Vendor/MSFT/AssignedAccess/Configuration`.


<span id="bridge" />
## Use MDM Bridge WMI Provider to configure assigned access

Environments that use WMI can use the [MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/desktop/dn905224.aspx) to configure the MDM_AssignedAccess class. See [PowerShell Scripting with WMI Bridge Provider](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/using-powershell-scripting-with-the-wmi-bridge-provider) for more details about using a PowerShell script to configure AssignedAccess. 

Here’s an example to set AssignedAccess configuration:

1. Download the [psexec tool](https://technet.microsoft.com/sysinternals/bb897553.aspx).  
2. Run `psexec.exe -i -s cmd.exe`.
3. In the command prompt launched by psexec.exe, enter `powershell.exe` to open PowerShell. 
4. Execute the following script:

```ps
$nameSpaceName="root\cimv2\mdm\dmmap"
$className="MDM_AssignedAccess"
$obj = Get-CimInstance -Namespace $namespaceName -ClassName $className
$obj.Configuration = @"
&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot; ?&gt;
&lt;AssignedAccessConfiguration xmlns=&quot;http://schemas.microsoft.com/AssignedAccess/2017/config&quot;&gt;
  &lt;Profiles&gt;
    &lt;Profile Id=&quot;{9A2A490F-10F6-4764-974A-43B19E722C23}&quot;&gt;
      &lt;AllAppsList&gt;
        &lt;AllowedApps&gt;
          &lt;App AppUserModelId=&quot;Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic&quot; /&gt;
          &lt;App AppUserModelId=&quot;Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo&quot; /&gt;
          &lt;App AppUserModelId=&quot;Microsoft.Windows.Photos_8wekyb3d8bbwe!App&quot; /&gt;
          &lt;App AppUserModelId=&quot;Microsoft.BingWeather_8wekyb3d8bbwe!App&quot; /&gt;
          &lt;App AppUserModelId=&quot;Microsoft.WindowsCalculator_8wekyb3d8bbwe!App&quot; /&gt;
          &lt;App DesktopAppPath=&quot;%windir%\system32\mspaint.exe&quot; /&gt;
          &lt;App DesktopAppPath=&quot;C:\Windows\System32\notepad.exe&quot; /&gt;
        &lt;/AllowedApps&gt;
      &lt;/AllAppsList&gt;
      &lt;StartLayout&gt;
        &lt;![CDATA[&lt;LayoutModificationTemplate xmlns:defaultlayout=&quot;http://schemas.microsoft.com/Start/2014/FullDefaultLayout&quot; xmlns:start=&quot;http://schemas.microsoft.com/Start/2014/StartLayout&quot; Version=&quot;1&quot; xmlns=&quot;http://schemas.microsoft.com/Start/2014/LayoutModification&quot;&gt;
                      &lt;LayoutOptions StartTileGroupCellWidth=&quot;6&quot; /&gt;
                      &lt;DefaultLayoutOverride&gt;
                        &lt;StartLayoutCollection&gt;
                          &lt;defaultlayout:StartLayout GroupCellWidth=&quot;6&quot;&gt;
                            &lt;start:Group Name=&quot;Group1&quot;&gt;
                              &lt;start:Tile Size=&quot;4x4&quot; Column=&quot;0&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.ZuneMusic_8wekyb3d8bbwe!Microsoft.ZuneMusic&quot; /&gt;
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;2&quot; AppUserModelID=&quot;Microsoft.ZuneVideo_8wekyb3d8bbwe!Microsoft.ZuneVideo&quot; /&gt;
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;0&quot; AppUserModelID=&quot;Microsoft.Windows.Photos_8wekyb3d8bbwe!App&quot; /&gt;
                              &lt;start:Tile Size=&quot;2x2&quot; Column=&quot;4&quot; Row=&quot;4&quot; AppUserModelID=&quot;Microsoft.BingWeather_8wekyb3d8bbwe!App&quot; /&gt;
                              &lt;start:Tile Size=&quot;4x2&quot; Column=&quot;0&quot; Row=&quot;4&quot; AppUserModelID=&quot;Microsoft.WindowsCalculator_8wekyb3d8bbwe!App&quot; /&gt;
                            &lt;/start:Group&gt;
                            &lt;start:Group Name=&quot;Group2&quot;&gt;
                              &lt;start:DesktopApplicationTile Size=&quot;2x2&quot; Column=&quot;2&quot; Row=&quot;0&quot; DesktopApplicationLinkPath=&quot;%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk&quot; /&gt;
                              &lt;start:DesktopApplicationTile Size=&quot;2x2&quot; Column=&quot;0&quot; Row=&quot;0&quot; DesktopApplicationLinkPath=&quot;%APPDATA%\Microsoft\Windows\Start Menu\Programs\Accessories\Notepad.lnk&quot; /&gt;
                            &lt;/start:Group&gt;
                          &lt;/defaultlayout:StartLayout&gt;
                        &lt;/StartLayoutCollection&gt;
                      &lt;/DefaultLayoutOverride&gt;
                    &lt;/LayoutModificationTemplate&gt;
                ]]&gt;
      &lt;/StartLayout&gt;
      &lt;Taskbar ShowTaskbar=&quot;true&quot;/&gt;
    &lt;/Profile&gt;
  &lt;/Profiles&gt;
  &lt;Configs&gt;
    &lt;Config&gt;
      &lt;Account&gt;MultiAppKioskUser&lt;/Account&gt;
      &lt;DefaultProfile Id=&quot;{9A2A490F-10F6-4764-974A-43B19E722C23}&quot;/&gt;
    &lt;/Config&gt;
  &lt;/Configs&gt;
&lt;/AssignedAccessConfiguration&gt;
"@
 
Set-CimInstance -CimInstance $obj
```


## Validate multi-app kiosk configuration

Sign in with the assigned access user account you specified in the configuration to check out the multi-app experience. 

>[!NOTE] 
>The setting will take effect the next time the assigned access user signs in. If that user account is signed in when you apply the configuration, make sure the user signs out and signs back in to validate the experience. 

The following sections explain what to expect on a multi-app kiosk.

### App launching and switching experience

In the multi-app mode, to maximize the user productivity and streamline the experience, an app will be always launched in full screen when the users click the tile on the Start. The users can minimize and close the app, but cannot resize the app window.  

The users can switch apps just as they do today in Windows. They can use the Task View button, Alt + Tab hotkey, and the swipe in from the left gesture to view all the open apps in task view. They can click the Windows button to show Start, from which they can open apps, and they can switch to an opened app by clicking it on the taskbar. 

### Start changes

When the assigned access user signs in, you should see a restricted Start experience:
- Start gets launched in full screen and prevents the end user from accessing the desktop. 
- Start shows the layout aligned with what you defined in the multi-app configuration XML. 
- Start prevents the end user from changing the tile layout.
  - The user cannot resize, reposition, and unpin the tiles.
  - The user cannot pin additional tiles on the start.
- Start hides **All Apps** list.
- Start hides all the folders on Start (including File Explorer, Settings, Documents, Downloads, Music, Pictures, Videos, HomeGroup, Network, and Personal folders). 
- Only **User** and **Power** buttons are available. (You can control whether to show the **User/Power** buttons using [existing policies](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start).) 
- Start hides **Change account settings** option under **User** button.

### Taskbar changes

If the applied multi-app configuration enables taskbar, when the assigned access user signs in, you should see a restricted Taskbar experience:
- Disables context menu of Start button (Quick Link)
- Disables context menu of taskbar
- Prevents the end user from changing the taskbar
- Disables Cortana and Search Windows
- Hides notification icons and system icons, e.g. Action Center, People, Windows Ink Workspace
- Allows the end user to view the status of the network connection and power state, but disables the flyout of **Network/Power** to prevent end user from changing the settings

### Blocked hotkeys

The multi-app mode blocks the following hotkeys, which are not relevant for the lockdown experience. 

| Hotkey | Action |
| --- | --- |
| Windows logo key  + A	 | Open Action center |
| Windows logo key  + Shift + C |	Open Cortana in listening mode |
| Windows logo key  + D	| Display and hide the desktop |
| Windows logo key  + Alt + D	| Display and hide the date and time on the desktop |
| Windows logo key  + E	| Open File Explorer |
| Windows logo key  + F |	Open Feedback Hub |
| Windows logo key  + G	| Open Game bar when a game is open |
| Windows logo key  + I	| Open Settings |
| Windows logo key  + J |	Set focus to a Windows tip when one is available. |
| Windows logo key  + O	| Lock device orientation |
| Windows logo key  + Q	 | Open search |
| Windows logo key  + R	| Open the Run dialog box |
| Windows logo key  + S	| Open search |
| Windows logo key  + X	| Open the Quick Link menu |
| Windows logo key  + comma (,) |	Temporarily peek at the desktop |
| Windows logo key  + Ctrl + F |	Search for PCs (if you're on a network) |



### Locked-down Ctrl+Alt+Del screen

The multi-app mode removes options (e.g. **Change a password**, **Task Manager**, **Network**) in the Ctrl+Alt+Del screen to ensure the users cannot access the functionalities that are not allowed in the lockdown experience. 

### Auto-trigger touch keyboard

In the multi-app mode, the touch keyboard will be automatically triggered when there is an input needed and no physical keyboard is attached on touch-enabled devices. You don’t need to configure any other setting to enforce this behavior. 






## Considerations for Windows Mixed Reality immersive headsets


With the advent of [mixed reality devices (video link)](https://www.youtube.com/watch?v=u0jqNioU2Lo), you might want to create a kiosk that can run mixed reality apps. 

To create a multi-app kiosk that can run mixed reality apps, you must include the following apps in the [AllowedApps list](#allowedapps):

```xml
<App AppUserModelId="MixedRealityLearning_cw5n1h2txyewy!MixedRealityLearning" />
<App AppUserModelId="HoloShell_cw5n1h2txyewy!HoloShell" />
<App AppUserModelId="Microsoft.Windows.HolographicFirstRun_cw5n1h2txyewy!App" />
```

These are in addition to any mixed reality apps that you allow.

**Before your kiosk user signs in:** An admin user must sign in to the PC, connect a mixed reality device, and complete the guided setup for the Mixed Reality Portal. The first time that the Mixed Reality Portal is set up, some files and content are downloaded. A kiosk user would not have permissions to download and so their setup of the Mixed Reality Portal would fail.

After the admin has completed setup, the kiosk account can sign in and repeat the setup. The admin user may want to complete the kiosk user setup before providing the PC to employees or customers.

There is a difference between the mixed reality experiences for a kiosk user and other users. Typically, when a user connects a mixed reality device, they begin in the [Mixed Reality home](https://developer.microsoft.com/windows/mixed-reality/navigating_the_windows_mixed_reality_home). The Mixed Reality home is a shell that runs in "silent" mode when the PC is configured as a kiosk. When a kiosk user connects a mixed reality device, they will see only a blank display in the device, and will not have access to the features and functionality available in the home. To run a mixed reality app, the kiosk user must launch the app from the PC Start screen.


## Policies set by multi-app kiosk configuration

It is not recommended to set policies enforced in assigned access multi-app mode to different values using other channels, as the multi-app mode has been optimized to provide a locked-down experience.

When the multi-app assigned access configuration is applied on the device, certain policies are enforced system-wide, and will impact other users on the device.


### Group Policy

The following local policies affect all **non-administrator** users on the system, regardless whether the user is configured as an assigned access user or not.  This includes local users, domain users, and Azure Active Directory users.

| Setting |	Value |
| --- | --- |
Remove access to the context menus for the task bar	| Enabled
Clear history of recently opened documents on exit |	Enabled
Prevent users from customizing their Start Screen |	Enabled
Prevent users from uninstalling applications from Start |		Enabled
Remove All Programs list from the Start menu |		Enabled
Remove Run menu from Start Menu	 |	Enabled
Disable showing balloon notifications as toast |		Enabled
Do not allow pinning items in Jump Lists |		Enabled
Do not allow pinning programs to the Taskbar |		Enabled
Do not display or track items in Jump Lists from remote locations |		Enabled
Remove Notifications and Action Center |		Enabled
Lock all taskbar settings |		Enabled
Lock the Taskbar	 |	Enabled
Prevent users from adding or removing toolbars |		Enabled
Prevent users from resizing the taskbar	 |	Enabled
Remove frequent programs list from the Start Menu |		Enabled
Remove Pinned programs from the taskbar	 |	Enabled
Remove the Security and Maintenance icon	 |	Enabled
Turn off all balloon notifications |		Enabled
Turn off feature advertisement balloon notifications	 |	Enabled
Turn off toast notifications |		Enabled
Remove Task Manager |		Enabled
Remove Change Password option in Security Options UI |		Enabled
Remove Sign Out option in Security Options UI	 |	Enabled
Remove All Programs list from the Start Menu	 |	Enabled – Remove and disable setting
Prevent access to drives from My Computer	 |	Enabled - Restrict all drivers

>[!NOTE]
>When **Prevent access to drives from My Computer** is enabled, users can browse the directory structure in File Explorer, but they cannot open folders and access the contents. Also, they cannot use the **Run** dialog box or the **Map Network Drive** dialog box to view the directories on these drives. The icons representing the specified drives still appear in File Explorer, but if users double-click the icons, a message appears expalining that a setting prevents the action. This setting does not prevent users from using programs to access local and network drives. It does not prevent users from using the Disk Management snap-in to view and change drive characteristics.



### MDM policy


Some of the MDM policies based on the [Policy configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider) affect all users on the system (i.e. system-wide).

Setting	| 	Value	| System-wide
 --- | --- | ---
[Experience/AllowCortana](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-allowcortana)		| 0 - Not allowed	| 	Yes
[Start/AllowPinnedFolderSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldersettings)	| 	0 - Shortcut is hidden and disables the setting in the Settings app	| 	Yes
Start/HidePeopleBar		| 1 - True (hide)	| 	No
[Start/HideChangeAccountSettings](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-start#start-hidechangeaccountsettings)		| 1 - True (hide) | Yes
[WindowsInkWorkspace/AllowWindowsInkWorkspace](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowsinkworkspace#windowsinkworkspace-allowwindowsinkworkspace)	| 	0 - Access to ink workspace is disabled and the feature is turned off	| 	Yes
[Start/StartLayout](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-startlayout)	| Configuration dependent	| 	No
[WindowsLogon/DontDisplayNetworkSelectionUI](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowslogon#windowslogon-dontdisplaynetworkselectionui)	| 	&lt;Enabled/&gt;	| 	Yes

<span id="lnk-files" />
## Provision .lnk files using Windows Configuration Designer

First, create your desktop app's shortcut file by installing the app on a test device. Right-click the installed application, and choose **Send to** > **Desktop (create shortcut)**. Rename the shortcut to `<appName>.lnk`

Next, create a batch file with two commands. If the desktop app is already installed on the target device, skip the first command for MSI install. 

```
msiexec /I "<appName>.msi" /qn /norestart
copy <appName>.lnk "%AllUsersProfile%\Microsoft\Windows\Start Menu\Programs\<appName>.lnk"
```

In Windows Configuration Designer, under **ProvisioningCommands** > **DeviceContext**:

- Under **CommandFiles**, upload your batch file, your .lnk file, and your desktop app installation file 
- Under **CommandLine**, enter cmd /c *FileName*.bat

