---
title: Set up student PCs to join domain
description: Learn how to use Configuration Designer to easily provision student devices to join Active Directory.
keywords: ["shared cart", "shared PC", "school"]
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: library
author: jdeckerMS
---

# Set up student PCs to join domain
**Applies to:**

-   Windows 10  


> <span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. ]</span>

<iframe width="608" height="391" src="https://mix.office.com/embed/6eldztg4turm" frameborder="0" allowfullscreen></iframe>

<table border="1" style="width:100%"> 
<thead><tr><th valign="top"><p>Policy name</p></th><th valign="top"><p>Value</p></th><th valign="top"><p>When set</p></th> 
</tr> </thead>
<tbody>
<tr><td valign="top" colspan="3"><p><strong>Admin Templates</strong> > <strong>Control Panel</strong> > <strong>Personalization</strong></p></td> 
</tr> 
<tr><td valign="top"><p>Prevent enabling lock screen slide show</p></td><td valign="top"><p>Enabled</p></td><td valign="top"><p>Always</p></td> 
</tr> 
<tr><td valign="top"><p>Do not display the lock screen</p></td><td valign="top"><p>Enabled</p><p>Only on Windows 10 Pro for EDU, Enterprise, Enterprise for EDU</p></td><td valign="top"><p>Always</p></td> 
</tr> 
<tr><td valign="top"><p>Prevent changing lock screen and logon image</p></td><td valign="top"><p>Enabled</p></td><td valign="top"><p>Always</p></td> 
</tr> 
<tr><td valign="top" colspan="3"><p><strong>Admin Templates</strong> > <strong>System</strong> > <strong>Power Management</strong> > <strong>Button Settings</strong></p></td> 
</tr> 
<tr><td valign="top"><p>Select the Power button action (plugged in)</p></td><td valign="top"><p>Sleep</p></td><td valign="top"><p>  SetPowerPolicies=True</p></td> 
</tr> 
<tr><td valign="top"><p>Select the Power button action (on battery)</p></td><td valign="top"><p>Sleep</p></td><td valign="top"><p>SetPowerPolicies=True</p></td> 
</tr> 
<tr><td valign="top"><p>Select the Sleep button action (plugged in)</p></td><td valign="top"><p>Sleep</p></td><td valign="top"><p>SetPowerPolicies=True</p></td> 
</tr> 
<tr><td valign="top"><p>Select the lid switch action (plugged in)</p></td><td valign="top"><p>Sleep</p></td><td valign="top"><p>SetPowerPolicies=True</p></td> 
</tr> 
<tr><td valign="top"><p>Select the lid switch action (on battery)</p></td><td valign="top"><p>Sleep</p></td><td valign="top"><p>SetPowerPolicies=True</p></td> 
</tr> 
<tr><td valign="top" colspan="3"><p><strong>Admin Templates</strong> > <strong>System</strong> > <strong>Power Management</strong> > <strong>Sleep Settings</strong></p></td> 
</tr> 
<tr><td valign="top"><p>Require a password when a computer wakes (plugged in)</p></td><td valign="top"><p>Enabled</p></td><td valign="top"><p>SignInOnResume = True </p></td> 
</tr> 
<tr><td valign="top"><p>Require a password when a computer wakes (on battery)</p></td><td valign="top"><p>Enabled</p></td><td valign="top"><p>SignInOnResume = True</p></td>
</tr>
<tr><td valign="top"><p>Specify the system sleep timeout (plugged in)</p></td><td valign="top"><p><em>SleepTimeout</em></p></td><td valign="top"><p>SetPowerPolicies=True</p></td> 
</tr> 
<tr><td valign="top"><p>Specify the system sleep timeout (on battery)</p></td><td valign="top"><p><em>SleepTimeout</em></p></td><td valign="top"><p>SetPowerPolicies=True</p></td> 
</tr> 
<tr> <td valign="top"> <p> Turn off hybrid sleep (plugged in) </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> SetPowerPolicies=True </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Turn off hybrid sleep (on battery) </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> SetPowerPolicies=True </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Specify the unattended sleep timeout (plugged in) </p> </td> <td valign="top"> <p> <em>SleepTimeout</em> </p> </td> <td valign="top"> <p> SetPowerPolicies=True </p> </td> </tr> 
<tr> <td valign="top"> <p> Specify the unattended sleep timeout (on battery) </p> </td> <td valign="top"> <p> <em>SleepTimeout</em> </p> </td> <td valign="top"> <p> SetPowerPolicies=True </p> </td> </tr> 
<tr> <td valign="top"> <p> Allow standby states (S1-S3) when sleeping (plugged in) </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> SetPowerPolicies=True </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Allow standby states (S1-S3) when sleeping (on battery) </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> SetPowerPolicies=True </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Specify the system hibernate timeout (plugged in) </p> </td> <td valign="top"> <p> Enabled, 0 </p> </td> <td valign="top"> <p> SetPowerPolicies=True </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Specify the system hibernate timeout (on battery) </p> </td> <td valign="top"> <p> Enabled, 0 </p> </td> <td valign="top"> <p> SetPowerPolicies=True </p> </td> </tr> <tr> <td valign="top" colspan="3"> <p> <strong>Admin Templates</strong>  >  <strong>System</strong>  >  <strong>Power Management</strong>  >  <strong>Video and Display Settings</strong> </p> </td> </tr> 
<tr> <td valign="top"> <p> Turn off the display (plugged in) </p> </td> <td valign="top"> <p> <em>SleepTimeout</em> </p> </td> <td valign="top"> <p> SetPowerPolicies=True </p> </td> </tr> <tr> <td valign="top"> <p> Turn off the display (on battery </p> </td> <td valign="top"> <p> <em>SleepTimeout</em> </p> </td> <td valign="top"> <p> SetPowerPolicies=True </p> </td> 
</tr> 
<tr> <td valign="top" colspan="3"> <p> <strong>Admin Templates</strong>  >  <strong>System</strong>  >  <strong>Logon</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Show first sign-in animation </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Hide entry points for Fast User Switching </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> Always </p> </td> </tr> <tr> <td valign="top"> <p> Turn on convenience PIN sign-in </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Turn off picture password sign-in </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Turn off app notification on the lock screen </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Allow users to select when a password is required when resuming from connected standby </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> SignInOnResume = True </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Block user from showing account details on sign-in </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top" colspan="3"> <p> <strong>Admin Templates</strong>  >  <strong>System</strong>  >  <strong>User Profiles</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Turn off the advertising ID </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> SetEduPolicies = True </p> </td> 
</tr> 
<tr> <td valign="top" colspan="3"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components </strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Do not show Windows Tips </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> SetEduPolicies = True </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Turn off Microsoft consumer experiences </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> SetEduPolicies = True </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Microsoft Passport for Work </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Prevent the usage of OneDrive for file storage </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top" colspan="3"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Biometrics</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Allow the use of biometrics </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Allow users to log on using biometrics </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Allow domain users to log on using biometrics </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top" colspan="3"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Data Collection and Preview Builds</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Toggle user control over Insider builds </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Disable pre-release features or settings </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Do not show feedback notifications </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top" colspan="3"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>File Explorer</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Show lock in the user tile menu </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top" colspan="3"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Maintenance Scheduler</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Automatic Maintenance Activation Boundary </p> </td> <td valign="top"> <p> <em>MaintenanceStartTime</em> </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Automatic Maintenance Random Delay </p> </td> <td valign="top"> <p> Enabled, 2 hours </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Automatic Maintenance WakeUp Policy </p> </td> <td valign="top"> <p> Enabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top" colspan="3"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Microsoft Edge</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Open a new tab with an empty tab </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> SetEduPolicies = True </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Configure corporate home pages </p> </td> <td valign="top"> <p> Enabled, about:blank </p> </td> <td valign="top"> <p> SetEduPolicies = True </p> </td> 
</tr> 
<tr> <td valign="top" colspan="3"> <p> <strong>Admin Templates</strong>  >  <strong>Windows Components</strong>  >  <strong>Search</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Allow Cortana </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> SetEduPolicies = True </p> </td> 
</tr> 
<tr> <td valign="top" colspan="3"> <p> <strong>Windows Settings</strong>  >  <strong>Security Settings</strong>  >  <strong>Local Policies</strong>  >  <strong>Security Options</strong> </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Interactive logon: Do not display last user name </p> </td> <td valign="top"> <p> - Enabled </p> <p> - Disabled when account model is only guest </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Interactive logon: Sign-in last interactive user automatically after a system-initiated restart </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> Shutdown: Allow system to be shut down without having to log on </p> </td> <td valign="top"> <p> Disabled </p> </td> <td valign="top"> <p> Always </p> </td> 
</tr> 
<tr> <td valign="top"> <p> User Account Control: Behavior of the elevation prompt for standard users </p> </td> <td valign="top"> <p> Auto deny </p> </td> <td valign="top"> <p> Always </p> </td> </tr> 
</tbody>
</table> </br>

text

