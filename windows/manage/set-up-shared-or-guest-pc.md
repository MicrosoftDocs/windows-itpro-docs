---
title: Set up a shared or guest PC with Windows 10 (Windows 10)
description: tbd
keywords: ["shared pc mode"]
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
---

# Set up a shared or guest PC with Windows 10


**Applies to**

-   Windows 10

Windows 10, Version 1607, introduces *shared PC mode*, which optimizes Windows 10 for shared use scenarios, such as touchdown spaces in an enterprise  and temporary customer use in retail. You can apply shared PC mode to Windows 10 Pro, Education, and Enterprise.

> **Note:** If you're interested in using Windows 10 for shared PCs in a school, see [Use Set up School PCs app](https://technet.microsoft.com/en-us/edu/windows/use-set-up-school-pcs-app).

A Windows 10 PC in shared PC mode is designed to be management- and maintenance-free with high reliability. After setup, the device is ready for multiple users. Users only have non-administrator rights, and they can’t block other users from accessing the device. With a standard Windows PC, accounts would have to be manually cleaned by an administrator (both signed out and deleted). In shared PC mode, accounts that sign in to the PC are either deleted when the user signs out or are deleted when available disk space reaches a set threshold, depending on how you configure the settings for shared PC mode. 

You can put a PC in shared PC mode by applying a provisioning package when you initially set up the PC (also known as the out-of-box-experience or OOBE), or you can apply the provisioning package to a Windows 10 PC that is already in use. The provisioning package is created in Windows Imaging and Configuration Designer (ICD). Shared PC mode is enabled by the [SharedPC configuration service provider (CSP)](https://msdn.microsoft.com/en-us/library/windows/hardware/mt723294.aspx). 

![Shared PC settings in ICD](images/icd-adv-shared-pc.png)


## Create a provisioning package for shared use

Use the Windows ICD tool included in the Windows Assessment and Deployment Kit (ADK) for Windows 10 to create a provisioning package that configures a device for shared PC mode. [Install the ADK.](http://go.microsoft.com/fwlink/p/?LinkId=526740)

1.  Open Windows ICD (by default, %windir%\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\Imaging and Configuration Designer\\x86\\ICD.exe). 

2. On the **Start page**, select **Advanced provisioning**.

3. Enter a name and (optionally) a description for the project, and click **Next**.

4. Select **All Windows desktop editions**, and click **Next**.

5. Click **Finish**. Your project opens in Windows ICD.

6. Go to **Runtime settings** > **SharedPC**. The following table describes the settings you can configure for **SharedPC**.

Setting | Value |
:---|:---|
EnableSharedPCMode | Set as **True**. The remaining settings in **SharedPC** are optional, but we strongly recommend that you also set `EnableAccountManager` to **True**.</br></br>If you do not set **EnableSharedPCMode** as **True**, you can create a provisioning package using the remaining settings in **SharedPC** but  none of the other settings will be applied.  |
AccountManagement: AccountModel | For a shared or guest PC, choose between **Only guest** and **Domain-joined and guest**.<br/>  - **Only guest** allows anyone to use the PC as a local standard (non-admin) account. When the account is signed out, it is deleted immediately. <br/>  - **Domain-joined only** allows users to sign in with an Active Directory or Azure AD account.<br/>-   **Domain-joined and guest** allows users to sign in with an Active Directory, Azure AD, or local standard account.   |
AccountManagement: DeletionPolicy | - **Delete immediately** will delete all accounts on sign-out. <br/>- **Delete at disk space threshold** will start deleting Active Directory and Azure AD accounts when available disk space falls below the threshold you set for **DiskLevelDeletion**, and it will stop deleting accounts when the available disk space reaches the threshold you set for **DiskLevelCaching**. Accounts are deleted in order of oldest accessed to most recently accessed.  |
AccountManagement: DiskLevelCaching | If you set **DeletionPolicy** to **Delete at disk space threshold**, set the percent of total disk space to be used as the disk space threshold for account caching.   |
AccountManagement: DiskLevelDeletion | If you set **DeletionPolicy** to **Delete at disk space threshold**, set the percent of total disk space to be used as the disk space threshold for account deletion.   |
AccountManagement: EnableAccountManager | Set as **True** if you want to set any other account management policies. |
Customization: MaintenanceStartTime | By default, the maintenance start time (which is when automatic maintenance tasks run, such as Windows Update) is midnight. You can adjust the start time in this setting by entering a new start time in minutes from midnight. For example, if you want maintenance to begin at 2 AM, enter `120` as the value.   |
Customization: SetEduPolicies | Set to **True** for PCs that will be used in a school. When **SetEduPolicies** is **True**, the following additional policies are applied:<br/>- Local storage locations are restricted. Users can only save files to the cloud. <br/>- Custom Start and taskbar layouts are set.\* <br/>- A custom sign-in screen background image is set.\*<br/><br/>\*Only applies to Windows 10 Pro for Education, Enterprise, and Education  |
Customization: SetPowerPolicies |  When set as **True**:<br/>- Prevents users from changing power settings<br/>- Turns off hibernate<br/>- Enables wake timers for Windows Update<br/>- Turns off all state transitions to sleep  |
Customization: SignInOnResume | This setting specifies if the user is required to sign in with a password when the PC wakes from sleep.     |
Customization: SleepTimeout | Specifies all timeouts for when the PC should sleep. Enter the amount of idle time in seconds. If you don't set sleep timeout, the default of 1 hour applies.     |
  <br/>

## Apply the provisioning package

You can apply the provisioning package to a PC during initial setup or to a PC that has already been set up.

**During initial setup**
1. Start with a computer on the first-run setup screen. If the PC has gone past this screen, reset the PC to start over. To reset the PC, go to **Settings** > **Update & security** > **Recovery** > **Reset this PC**.

    ![The first screen to set up a new PC](images/oobe.jpg)

2. Insert the USB drive. Windows Setup will recognize the drive and ask if you want to set up the device. Select **Set up**.

    ![Set up device?](images/setupmsg.jpg)

3. The next screen asks you to select a provisioning source. Select **Removable Media** and tap **Next**.

    ![Provision this device](images/prov.jpg)
    
4. Select `SetupSchoolPCs.ppkg` and tap **Next**.

    ![Choose a package](images/choose-package.png)

5. Select **Yes, add it**.

    ![Do you trust this package?](images/trust-package.png)
    
6. Read and accept the Microsoft Software License Terms.  

    ![Sign in](images/license-terms.png)
    
7. Select **Use Express settings**.

    ![Get going fast](images/express-settings.png)

8. If the PC doesn't use a volume license, you'll see the **Who owns this PC?** screen. Select **My work or school owns it** and tap **Next**.

    ![Who owns this PC?](images/who-owns-pc.png)

9. On the **Choose how you'll connect** screen, select **Join Azure AD** and tap **Next**.

    ![Connect to Azure AD](images/connect-aad.png)

10. Your last step is to sign in. Use your Azure AD or Office 365 account and password. When you see the progress ring, you can remove the USB drive.

    ![Sign in](images/sign-in-prov.png)

    
**After setup**

On a desktop computer, navigate to **Settings** &gt; **Accounts** &gt; **Work access** &gt; **Add or remove a management package** &gt; **Add a package**, and selects the package to install. 

![add a package option](images/package.png)

## How accounts work in shared PC mode

text

## Policies set by shared PC mode

> **Important**: It is not recommended to set additional policies on PCs configured for **Shared PC Mode**.	The shared PC mode has been optimized to be fast and reliable over time with minimal to no manual maintenance required.

<table style="width:100%" border="1"> 
<caption><strong>Admin Templates</strong> > <strong>Control Panel</strong> > <strong>Personalization</strong> </caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 

<tr><td><p>Prevent enabling lock screen slide show</p></td><td><p>Enabled</p></td>
</tr> 
<tr><td><p>Prevent changing lock screen and logon image</p></td><td><p>Enabled</p></td>
</tr> </table><br/>
<table style="width:100%" border="1"> 
<caption><strong>Admin Templates</strong> > <strong>System</strong> > <strong>Power Management</strong> > <strong>Button Settings</strong></caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 

<tr><td><p>Select the Power button action (plugged in)</p></td><td><p>Sleep</p></td> 
</tr> 
<tr><td><p>Select the Power button action (on battery)</p></td><td><p>Sleep</p></td> 
</tr> 
<tr><td><p>Select the Sleep button action (plugged in)</p></td><td><p>Sleep</p></td> 
</tr> 
<tr><td><p>Select the lid switch action (plugged in)</p></td><td><p>Sleep</p></td>
</tr> 
<tr><td><p>Select the lid switch action (on battery)</p></td><td><p>Sleep</p></td>
</tr> </table><br/>
<table style="width:100%" border="1"> 
<caption><strong>Admin Templates</strong> > <strong>System</strong> > <strong>Power Management</strong> > <strong>Sleep Settings</strong></caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 

<tr><td><p>Require a password when a computer wakes (plugged in)</p></td><td><p>Enabled</p></td>
</tr> 
<tr><td><p>Require a password when a computer wakes (on battery)</p></td><td><p>Enabled</p></td>
</tr>
<tr><td><p>Specify the system sleep timeout (plugged in)</p></td><td><p>1 hour</p></td>
</tr> 
<tr><td><p>Specify the system sleep timeout (on battery)</p></td><td><p>1 hour</p></td>
</tr> 
<tr> <td> <p> Turn off hybrid sleep (plugged in) </p> </td> <td> <p> Enabled </p> </td>  
</tr> 
<tr> <td> <p> Turn off hybrid sleep (on battery) </p> </td> <td> <p> Enabled </p> </td>  
</tr> 
<tr> <td> <p> Specify the unattended sleep timeout (plugged in) </p> </td> <td> <p> 1 hour </p> </td>  
</tr> 
<tr> <td> <p> Specify the unattended sleep timeout (on battery) </p> </td> <td> <p> 1 hour </p> </td> 
</tr> 
<tr> <td> <p> Allow standby states (S1-S3) when sleeping (plugged in) </p> </td> <td> <p> Enabled </p> </td>  
</tr> 
<tr> <td> <p> Allow standby states (S1-S3) when sleeping (on battery) </p> </td> <td> <p> Enabled </p> </td> 
</tr> 
<tr> <td> <p> Specify the system hibernate timeout (plugged in) </p> </td> <td> <p> Enabled, 0 </p> </td> 
</tr> 
<tr> <td> <p> Specify the system hibernate timeout (on battery) </p> </td> <td> <p> Enabled, 0 </p> </td> 
</tr> </table><bbr/>
<table style="width:100%" border="1"> 
<caption <strong>Admin Templates</strong>  >  <strong>System</strong>  >  <strong>Power Management</strong>  >  <strong>Video and Display Settings</strong>  ></caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 

<tr> <td> <p> Turn off the display (plugged in) </p> </td> <td> <p> 1 hour </p> </td> 
</tr>
 <tr> <td> <p> Turn off the display (on battery </p> </td> <td> <p> 1 hour </p> </td>  
</tr> </table><br/>
<table style="width:100%" border="1"> 
<caption> <strong>Admin Templates</strong>  >  <strong>System</strong>  >  <strong>Logon</strong> </caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 

<tr> <td> <p> Show first sign-in animation </p> </td> <td> <p> Disabled </p> </td>  
</tr> 
<tr> <td> <p> Hide entry points for Fast User Switching </p> </td> <td> <p> Enabled </p> </td> 
</tr> 
<tr> <td> <p> Turn on convenience PIN sign-in </p> </td> <td> <p> Disabled </p> </td>  
</tr> 
<tr> <td> <p> Turn off picture password sign-in </p> </td> <td> <p> Enabled </p> </td>  
</tr> 
<tr> <td> <p> Turn off app notification on the lock screen </p> </td> <td> <p> Enabled </p> </td>  
</tr> 
<tr> <td> <p> Allow users to select when a password is required when resuming from connected standby </p> </td> <td> <p> Disabled </p> </td> 
</tr> 
<tr> <td> <p> Block user from showing account details on sign-in </p> </td> <td> <p> Enabled </p> </td>  
</tr> </table><br/>
<table style="width:100%" border="1"> 
<caption><strong>Admin Templates</strong>  >  <strong>System</strong>  >  <strong>User Profiles</strong> </caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 

<tr> <td> <p> Turn off the advertising ID </p> </td> <td> <p> Enabled </p> </td>  
</tr> </table><br/>
<table style="width:100%" border="1"> 
<caption> <strong>Admin Templates</strong>  >  <strong>Windows Components </strong> </caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 

<tr> <td> <p> Do not show Windows Tips </p> </td> <td> <p> Enabled </p> </td> 
</tr> 
<tr> <td> <p> Turn off Microsoft consumer experiences </p> </td> <td> <p> Enabled </p> </td> 
</tr> 
<tr> <td> <p> Microsoft Passport for Work </p> </td> <td> <p> Disabled </p> </td>  
</tr> 
<tr> <td> <p> Prevent the usage of OneDrive for file storage </p> </td> <td> <p> Enabled </p> </td>  
</tr> </table><br/>
<table style="width:100%" border="1"> 
<caption> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Biometrics</strong> </caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 

<tr> <td> <p> Allow the use of biometrics </p> </td> <td> <p> Disabled </p> </td>  
</tr> 
<tr> <td> <p> Allow users to log on using biometrics </p> </td> <td> <p> Disabled </p> </td> 
</tr> 
<tr> <td> <p> Allow domain users to log on using biometrics </p> </td> <td> <p> Disabled </p> </td> 
</tr> </table><br/>
<table style="width:100%" border="1"> 
<caption> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Data Collection and Preview Builds</strong></caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 
 
<tr> <td> <p> Toggle user control over Insider builds </p> </td> <td> <p> Disabled </p> </td>  
</tr> 
<tr> <td> <p> Disable pre-release features or settings </p> </td> <td> <p> Disabled </p> </td> 
</tr> 
<tr> <td> <p> Do not show feedback notifications </p> </td> <td> <p> Enabled </p> </td> 
</tr> </table><br/>
<table style="width:100%" border="1"> 
<caption> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>File Explorer</strong> </caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 

<tr> <td> <p> Show lock in the user tile menu </p> </td> <td> <p> Disabled </p> </td>  
</tr> </table><br/>
<table style="width:100%" border="1"> 
<caption><strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Maintenance Scheduler</strong></caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 
 
<tr> <td> <p> Automatic Maintenance Activation Boundary </p> </td> <td> <p> 12am </p> </td>  
</tr> 
<tr> <td> <p> Automatic Maintenance Random Delay </p> </td> <td> <p> Enabled, 2 hours </p> </td> 
</tr> 
<tr> <td> <p> Automatic Maintenance WakeUp Policy </p> </td> <td> <p> Enabled </p> </td> 
</tr> </table><br/>
<table style="width:100%" border="1">
<caption> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Microsoft Edge</strong> </caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 

<tr> <td> <p> Open a new tab with an empty tab </p> </td> <td> <p> Disabled </p> </td> 
</tr> 
<tr> <td> <p> Configure corporate home pages </p> </td> <td> <p> Enabled, about:blank </p> </td> 
</tr> </table><br/>
<table style="width:100%" border="1"> 
<caption><strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Search</strong></caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 
 
<tr> <td> <p> Allow Cortana </p> </td> <td> <p> Disabled </p> </td> 
</tr> </table><br/>
<table style="width:100%" border="1"> 
<caption><strong>Windows Settings</strong>  >  <strong>Security Settings</strong>  >  <strong>Local Policies</strong>  >  <strong>Security Options</strong> </caption>
<tr><th><p>Policy name</p></th><th><p>Value</p></th> 
</tr> 
 
<tr> <td> <p> Interactive logon: Do not display last user name </p> </td> <td> <p> Enabled </p>   </td>
</tr> 
<tr> <td> <p> Interactive logon: Sign-in last interactive user automatically after a system-initiated restart </p> </td> <td> <p> Disabled </p> </td> 
</tr> 
<tr> <td> <p> Shutdown: Allow system to be shut down without having to log on </p> </td> <td> <p> Disabled </p> </td> 
</tr> 
<tr> <td> <p> User Account Control: Behavior of the elevation prompt for standard users </p> </td> <td> <p> Auto deny </p> </td>  
</tr> 
</table> </br></br>



## Related topics

[Set up a device for anyone to use (kiosk)](set-up-a-device-for-anyone-to-use.md)


 

 





