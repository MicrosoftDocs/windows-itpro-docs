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

Windows 10, Version 1607, introduces *shared PC mode*, which optimizes Windows 10 for shared use scenarios, such as touchdown spaces in an enterprise  and temporary customer use in retail.

PRO, EDU, & ENT - HOME TOO?

> **Note:** If you're interested in using Windows 10 for shared PCs in a school, see [Use Set up School PCs app](https://technet.microsoft.com/en-us/edu/windows/use-set-up-school-pcs-app).

A Windows PC in shared PC mode (has what characteristics and behaviors?)

You can put a PC in shared PC mode by applying a provisioning package when you initially set up the PC (also known as the out-of-box-experience or OOBE). The provisioning package is created in Windows Imaging and Configuration Designer (ICD). Shared PC mode is enabled by the [SharedPC configuration service provider (CSP)](https://msdn.microsoft.com/en-us/library/windows/hardware/mt723294.aspx). 

![Shared PC settings in ICD](images/icd-adv-shared-pc.png)


## Create a provisioning package for shared use

Use the Windows ICD tool included in the Windows Assessment and Deployment Kit (ADK) for Windows 10 to create a provisioning package that configures a device as a kiosk. [Install the ADK.](http://go.microsoft.com/fwlink/p/?LinkId=526740)

1.  Open Windows ICD (by default, %windir%\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\Imaging and Configuration Designer\\x86\\ICD.exe). 

2. On the **Start page**, select **Advanced provisioning**.

3. Enter a name and (optionally) a description for the project, and click **Next**.

4. Select **All Windows desktop editions**, and click **Next**.

5. Click **Finish**. Your project opens in Windows ICD.

6. Go to **Runtime settings** > **SharedPC**. The following table describes the settings you can configure for **SharedPC**.

Setting | Value |
:---|:---|
EnableSharedPCMode | Set as **True**. This is the only setting required for provisioning a shared PC. The remaining settings in **SharedPC** are optional.</br></br>If you do not set **EnableSharedPCMode** as **True**, you can create a provisioning package using the remaining settings in **SharedPC** but  none of the other settings will be applied.  |
AccountManagement: AccountModel | (default value 0, min value 0, max value 2 -- ???)<br/>- **Only guest** allows anyone to use the PC as a local standard (non-admin) account. When the account is signed out, it is deleted immediately. <br/>- **Domain-joined only** allows users to sign in with an Active Directory or Azure AD account.<br/>- **Domain-joined and guest** allows users to sign in with an Active Directory, Azure AD, or local standard account.   |
AccountManagement: DeletionPolicy | <br/>- **Delete immediately** will delete all accounts on sign-out. <br/>- **Delete at disk space threshold** will start deleting Active Directory and Azure AD accounts when available disk space falls below the threshold you set for **DiskLevelDeletion**, and it will stop deleting accounts when the available disk space reaches the threshold you set for **DiskLevelCaching**. Accounts are deleted in order of oldest accessed to most recently accessed.  |
AccountManagement: DiskLevelCaching | If you set **DeletionPolicy** to **Delete at disk space threshold**, set the percent of total disk space to be used as the disk space threshold for account caching.   |
AccountManagement: DiskLevelDeletion | If you set **DeletionPolicy** to **Delete at disk space threshold**, set the percent of total disk space to be used as the disk space threshold for account deletion.   |
AccountManagement: EnableAccountManager | Set as **True** if you want to set any other account management policies. If you enable **Shared PC mode** and do not enable the account management service, then...what?|
Customization: MaintenanceStartTime | By default, the maintenance start time (which is when automatic maintenance tasks run, such as Windows Update) is midnight. You can adjust the start time in this setting by entering a new start time in minutes from midnight. For example, if you want maintenance to begin at 2 AM, enter `120` as the value.   |
Customization: SetEduPolicies | Set to **True** for PCs that will be used in a school. When **SetEduPolicies** is **True**, the following additional policies are applied:<br/>- Local storage locations are restricted. Users can only save files to the cloud. <br/>- Custom Start and taskbar layouts are set.\* <br/>- A custom sign-in screen background image is set.\*<br/><br/>*Only applies to Windows 10 Pro for Education, Enterprise, and Education  |
Customization: SetPowerPolicies |  These customizations make it easy to set the power settings of the PC.<br/>-	Sleep timeout<br/>o	Specifies when the PC should sleep<br/>-	Set power policies<br/>o	Uses the sleep timeout setting to set when the PC sleeps - HUH?<br/>   |
Customization: SignInOnResume | This setting specifies if the user is required to sign in with a password when the PC wakes from sleep.     |
Customization: SleepTimeout | Amount of idle time in seconds     |
  <br/>

## Apply the provisioning package

how to

## How accounts work in shared PC mode



## Related topics

[Set up a device for anyone to use (kiosk)](set-up-a-device-for-anyone-to-use.md)


 

 





