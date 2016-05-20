---
title: Set up School PCs app technical reference
description: Describes the changes that the app makes to a PC.
keywords: ["shared cart", "shared PC", "school"]
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: library
author: jdeckerMS
---

# Technical reference for the Set up School PCs app
**Applies to:**

-   Windows 10 Insider Preview 


> <span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. ]</span>

The **Set up School PCs** app helps you set up new Windows 10 PCs that work great in your school by configuring shared PC mode, available in Windows 10, version 1607. **Set up School PCs** also configures school-specific settings and policies, described in this topic.

If your school uses Azure Active Directory (Azure AD) or Office 365, the **Set up School PCs** app will create a setup file that connects the computer to your subscription.  You can also use the app to set up school PCs that anyone can use, with or without Internet connectivity. 

The following table tells you what you get using the **Set up School PCs** app in your school. 

| Feature | No Internet | Azure AD | Office 365 | Azure AD Premium |
| --- | :---: | :---: | :---: | :---: |
| **Fast sign-in**<br/>Each student can sign in and start using the computer in less than a minute, even on their first sign-in. | X | X | X | X |
| **Custom Start experience**\*<br/>The apps students need are pinned to Start, and unnecessary apps are removed. | X | X | X | X |
| **Temporary access, no sign-in required**<br/>This option sets up computers for common use. Anyone can use the computer without an account. | X | X | X | X |
| **School policies**\*<br/>Settings specific to education create a useful learning environment and the best computer performance. | X | X | X | X |
| **Azure AD Join**<br/>The computers are  joined to your Azure AD or Office 365 subscription for centralized management. |   | X | X | X |
| **Single sign-on to Office 365**<br/>By signing on with student IDs, students have fast access to Office 365 web apps. |   |    | X | X |
| **[Settings roaming](https://azure.microsoft.com/en-us/documentation/articles/active-directory-windows-enterprise-state-roaming-overview/) via Azure AD**<br/>Student user and application settings data can be synchronized across devices for a personalized experience. |   |    |    | X |
|   |    |    |   |   |
\* Feature applies to Windows 10 Pro, Windows 10 Pro for Education, Windows 10 Enterprise, and Windows 10 Enterprise for EDU

> **Note**: If your school uses Active Directory, [use Windows Imaging and Configuration Designer](set-up-students-pcs-to-join-domain.md) to configure your PCs to join the domain. You can only use the **Set up School PCs** app to set up PCs that are not connected to your traditional domain.

## Prerequisites for IT

* If your school uses Azure AD, [configure your directory to allow devices to join](https://azure.microsoft.com/en-us/documentation/articles/active-directory-azureadjoin-setup/).  If the teacher is going to set up a lot of devices, give the teacher appropriate privileges for joining devices or make a special account.
* Office 365, which includes online versions of Office apps plus 1 TB online storage and [Microsoft Classroom](https://classroom.microsoft.com/), is free for teachers and students. [Sign up your school for Office 365 Education.](https://products.office.com/en-us/academic/office-365-education-plan)
* If your school has an Office 365 Education subscription, it includes a free Azure AD subscription. [Register your free Azure AD subscription.](https://msdn.microsoft.com/en-us/library/windows/hardware/mt703369%28v=vs.85%29.aspx)
* After you set up your Office 365 Education tenant, use [Microsoft School Data Sync Preview](https://sis.microsoft.com/) to sync user profiles and class rosters from your Student Information System (SIS).


## Information about Windows Update

Shared PC mode helps ensure that computers are always up-to-date. If a PC is configured using the **Set up School PCs** app, shared PC mode sets the power states and Windows Update to: 
* Wake nightly
* Check and install updates
* Forcibly reboot if necessary to finish applying updates

The PC is also configured to not interrupt the user during normal daytime hours with updates or reboots.

## Guidance for accounts on shared PCs

* We recommend no local admin accounts on the PC to improve the reliability and security of the PC.
* When a PC is set up in shared PC mode, accounts will be cached automatically until disk space is low. Then, accounts will be deleted to reclaim disk space. This account managment happens automatically. Both Azure AD and Active Directory domain accounts are managed in this way. Any accounts created through **Start without an account** will also be deleted automatically at sign out.
* On a Windows PC joined to Azure Active Directory:
    * By default, the account that joined the PC to Azure AD will have an admin account on that PC. Global administrators for the Azure AD domain will also have admin accounts on the PC.
    * With Azure AD Premium, you can specify which accounts have admin accounts on a PC using the **Additional administrators on Azure AD Joined devices** setting on the Azure portal.
* Local accounts that already exist on a PC won’t be deleted when turning on shared PC mode. However, any new local accounts created by the **Start without an account** selection on the sign-in screen (if enabled) will automatically be deleted at sign-out. 
    * Ensure the PC is joined to a domain that enables accounts to be signed on as admin, or
    * Create admin accounts before setting up shared PC mode, or 
    * Create exempt accounts before signing out.
* The account management service supports accounts that are exempt from deletion.
    * An account can be marked exempt from deletion by adding the account SID to the `HKEY_LOCAL_MACHINE\SOFTARE\Microsoft\Windows\CurrentVersion\SharedPC\Exemptions\` registry key.
    * To add the account SID to the registry key using PowerShell:
        ```
        $adminName = "LocalAdmin"
        $adminPass = 'Pa$$word123'
        iex "net user /add $adminName $adminPass"
        $user = New-Object System.Security.Principal.NTAccount($adminName) 
        $sid = $user.Translate([System.Security.Principal.SecurityIdentifier]) 
        $sid = $sid.Value;
        New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\SharedPC\Exemptions\$sid" -Force
        ``` 




## Provisioning package details

The **Set up School PCs** app produces a specialized provisioning package that makes use of the `SharedPC` configuration service provider (CSP). 

### Education customizations

- Saving content locally to the PC is disabled. This prevents data loss by forcing students to save tothe cloud.
- A custom Start layout and sign in background image are set. 


### Uninstalled apps 

- 3D Builder (Microsoft.3DBuilder_8wekyb3d8bbwe)
- Weather (Microsoft.BingWeather_8wekyb3d8bbwe)
- Get Started (Microsoft.Getstarted_8wekyb3d8bbwe)
- Get Office (Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe)
- Microsoft Solitaire Collection (Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe)
- Paid Wi-Fi & Cellular (Microsoft.OneConnect_8wekyb3d8bbwe)
- Feedback Hub (Microsoft.WindowsFeedbackHub_8wekyb3d8bbwe)
- Xbox (Microsoft.XboxApp_8wekyb3d8bbwe)
- Groove Music (Microsoft.ZuneMusic_8wekyb3d8bbwe)
- Movies & TV (Microsoft.ZuneVideo_8wekyb3d8bbwe)
- Mail/Calendar (microsoft.windowscommunicationsapps_8wekyb3d8bbwe)

### Local Group Policies

> **Important**: It is not recommended to set additional policies on PCs configured with the **Set up School PCs** app.	The shared PC mode has been optimized to be fast and reliable over time with minimal to no manual maintenance required

<table border="1" style="width:100%"> 
<thead><tr><th valign="top"><p>Policy name</p></th><th valign="top"><p>Value</p></th> 
</tr> </thead>
<tbody>
<tr><td valign="top" colspan="2"><p><strong>Admin Templates</strong> > <strong>Control Panel</strong> > <strong>Personalization</strong></p></td> 
</tr> 
<tr><td valign="top"><p>Prevent enabling lock screen slide show</p></td><td valign="top"><p>Enabled</p></td>
</tr> 

<tr><td valign="top"><p>Prevent changing lock screen and logon image</p></td><td valign="top"><p>Enabled</p></td>
</tr> 
<tr><td valign="top" colspan="2"><p><strong>Admin Templates</strong> > <strong>System</strong> > <strong>Power Management</strong> > <strong>Button Settings</strong></p></td> 
</tr> 
<tr><td valign="top"><p>Select the Power button action (plugged in)</p></td><td valign="top"><p>Sleep</p></td> 
</tr> 
<tr><td valign="top"><p>Select the Power button action (on battery)</p></td><td valign="top"><p>Sleep</p></td> 
</tr> 
<tr><td valign="top"><p>Select the Sleep button action (plugged in)</p></td><td valign="top"><p>Sleep</p></td> 
</tr> 
<tr><td valign="top"><p>Select the lid switch action (plugged in)</p></td><td valign="top"><p>Sleep</p></td>
</tr> 
<tr><td valign="top"><p>Select the lid switch action (on battery)</p></td><td valign="top"><p>Sleep</p></td>
</tr> 
<tr><td valign="top" colspan="2"><p><strong>Admin Templates</strong> > <strong>System</strong> > <strong>Power Management</strong> > <strong>Sleep Settings</strong></p></td> 
</tr> 
<tr><td valign="top"><p>Require a password when a computer wakes (plugged in)</p></td><td valign="top"><p>Enabled</p></td>
</tr> 
<tr><td valign="top"><p>Require a password when a computer wakes (on battery)</p></td><td valign="top"><p>Enabled</p></td>
</tr>
<tr><td valign="top"><p>Specify the system sleep timeout (plugged in)</p></td><td valign="top"><p><em>SleepTimeout</em></p></td>
</tr> 
<tr><td valign="top"><p>Specify the system sleep timeout (on battery)</p></td><td valign="top"><p><em>SleepTimeout</em></p></td>
</tr> 
<tr> <td valign="top"> <p> Turn off hybrid sleep (plugged in) </p> </td> <td valign="top"> <p> Enabled </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Turn off hybrid sleep (on battery) </p> </td> <td valign="top"> <p> Enabled </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Specify the unattended sleep timeout (plugged in) </p> </td> <td valign="top"> <p> <em>SleepTimeout</em> </p> </td>  </tr> 
<tr> <td valign="top"> <p> Specify the unattended sleep timeout (on battery) </p> </td> <td valign="top"> <p> <em>SleepTimeout</em> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Allow standby states (S1-S3) when sleeping (plugged in) </p> </td> <td valign="top"> <p> Enabled </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Allow standby states (S1-S3) when sleeping (on battery) </p> </td> <td valign="top"> <p> Enabled </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Specify the system hibernate timeout (plugged in) </p> </td> <td valign="top"> <p> Enabled, 0 </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Specify the system hibernate timeout (on battery) </p> </td> <td valign="top"> <p> Enabled, 0 </p> </td> 
 </tr> 
 <tr> <td valign="top" colspan="2"> <p> <strong>Admin Templates</strong>  >  <strong>System</strong>  >  <strong>Power Management</strong>  >  <strong>Video and Display Settings</strong> </p> </td> </tr> 
<tr> <td valign="top"> <p> Turn off the display (plugged in) </p> </td> <td valign="top"> <p> <em>SleepTimeout</em> </p> </td> 
 </tr>
  <tr> <td valign="top"> <p> Turn off the display (on battery </p> </td> <td valign="top"> <p> <em>SleepTimeout</em> </p> </td>  
</tr> 
<tr> <td valign="top" colspan="2"> <p> <strong>Admin Templates</strong>  >  <strong>System</strong>  >  <strong>Logon</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Show first sign-in animation </p> </td> <td valign="top"> <p> Disabled </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Hide entry points for Fast User Switching </p> </td> <td valign="top"> <p> Enabled </p> </td> 
 </tr> 
 <tr> <td valign="top"> <p> Turn on convenience PIN sign-in </p> </td> <td valign="top"> <p> Disabled </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Turn off picture password sign-in </p> </td> <td valign="top"> <p> Enabled </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Turn off app notification on the lock screen </p> </td> <td valign="top"> <p> Enabled </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Allow users to select when a password is required when resuming from connected standby </p> </td> <td valign="top"> <p> Disabled </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Block user from showing account details on sign-in </p> </td> <td valign="top"> <p> Enabled </p> </td>  
</tr> 
<tr> <td valign="top" colspan="2"> <p> <strong>Admin Templates</strong>  >  <strong>System</strong>  >  <strong>User Profiles</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Turn off the advertising ID </p> </td> <td valign="top"> <p> Enabled </p> </td>  
</tr> 
<tr> <td valign="top" colspan="2"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components </strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Do not show Windows Tips </p> </td> <td valign="top"> <p> Enabled </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Turn off Microsoft consumer experiences </p> </td> <td valign="top"> <p> Enabled </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Microsoft Passport for Work </p> </td> <td valign="top"> <p> Disabled </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Prevent the usage of OneDrive for file storage </p> </td> <td valign="top"> <p> Enabled </p> </td>  
</tr> 
<tr> <td valign="top" colspan="2"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Biometrics</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Allow the use of biometrics </p> </td> <td valign="top"> <p> Disabled </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Allow users to log on using biometrics </p> </td> <td valign="top"> <p> Disabled </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Allow domain users to log on using biometrics </p> </td> <td valign="top"> <p> Disabled </p> </td> 
</tr> 
<tr> <td valign="top" colspan="2"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Data Collection and Preview Builds</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Toggle user control over Insider builds </p> </td> <td valign="top"> <p> Disabled </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Disable pre-release features or settings </p> </td> <td valign="top"> <p> Disabled </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Do not show feedback notifications </p> </td> <td valign="top"> <p> Enabled </p> </td> 
</tr> 
<tr> <td valign="top" colspan="2"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>File Explorer</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Show lock in the user tile menu </p> </td> <td valign="top"> <p> Disabled </p> </td>  
</tr> 
<tr> <td valign="top" colspan="2"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Maintenance Scheduler</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Automatic Maintenance Activation Boundary </p> </td> <td valign="top"> <p> <em>MaintenanceStartTime</em> </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Automatic Maintenance Random Delay </p> </td> <td valign="top"> <p> Enabled, 2 hours </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Automatic Maintenance WakeUp Policy </p> </td> <td valign="top"> <p> Enabled </p> </td> 
</tr> 
<tr> <td valign="top" colspan="2"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Microsoft Edge</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Open a new tab with an empty tab </p> </td> <td valign="top"> <p> Disabled </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Configure corporate home pages </p> </td> <td valign="top"> <p> Enabled, about:blank </p> </td> 
</tr> 
<tr> <td valign="top" colspan="2"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Search</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Allow Cortana </p> </td> <td valign="top"> <p> Disabled </p> </td> 
</tr> 
<tr> <td valign="top" colspan="2"> <p> <strong>Windows Settings</strong>  >  <strong>Security Settings</strong>  >  <strong>Local Policies</strong>  >  <strong>Security Options</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Interactive logon: Do not display last user name </p> </td> <td valign="top"> <p> Enabled </p> </td>  
</tr> 
<tr> <td valign="top"> <p> Interactive logon: Sign-in last interactive user automatically after a system-initiated restart </p> </td> <td valign="top"> <p> Disabled </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Shutdown: Allow system to be shut down without having to log on </p> </td> <td valign="top"> <p> Disabled </p> </td> 
</tr> 
<tr> <td valign="top"> <p> User Account Control: Behavior of the elevation prompt for standard users </p> </td> <td valign="top"> <p> Auto deny </p> </td>  </tr> 
</tbody>
</table> </br>

## Related topics

[Use Set up School PCs app](use-set-up-school-pcs-app.md)




