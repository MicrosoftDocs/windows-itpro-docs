---
title: Policies enforced on kiosk devices (Windows 10)
description: Learn about the policies enforced on a device when you configure it as a kiosk.
ms.assetid: 14DDDC96-88C7-4181-8415-B371F25726C8
ms.reviewer: 
manager: dansimp
keywords: ["lockdown", "app restrictions", "applocker"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: edu, security
author: dansimp
ms.localizationpriority: medium
ms.date: 07/30/2018
ms.author: dansimp
ms.topic: article
---

# Policies enforced on kiosk devices


**Applies to**

-   Windows 10 Pro, Enterprise, and Education



It is not recommended to set policies enforced in assigned access kiosk mode to different values using other channels, as the kiosk mode has been optimized to provide a locked-down experience.

When the assigned access kiosk configuration is applied on the device, certain policies are enforced system-wide, and will impact other users on the device.


## Group Policy

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
>When **Prevent access to drives from My Computer** is enabled, users can browse the directory structure in File Explorer, but they cannot open folders and access the contents. Also, they cannot use the **Run** dialog box or the **Map Network Drive** dialog box to view the directories on these drives. The icons representing the specified drives still appear in File Explorer, but if users double-click the icons, a message appears explaining that a setting prevents the action. This setting does not prevent users from using programs to access local and network drives. It does not prevent users from using the Disk Management snap-in to view and change drive characteristics.



## MDM policy


Some of the MDM policies based on the [Policy configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/policy-configuration-service-provider) affect all users on the system (i.e. system-wide).

Setting	| 	Value	| System-wide
 --- | --- | ---
[Experience/AllowCortana](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-allowcortana)		| 0 - Not allowed	| 	Yes
[Start/AllowPinnedFolderSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldersettings)	| 	0 - Shortcut is hidden and disables the setting in the Settings app	| 	Yes
Start/HidePeopleBar		| 1 - True (hide)	| 	No
[Start/HideChangeAccountSettings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-hidechangeaccountsettings)		| 1 - True (hide) | Yes
[WindowsInkWorkspace/AllowWindowsInkWorkspace](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowsinkworkspace#windowsinkworkspace-allowwindowsinkworkspace)	| 	0 - Access to ink workspace is disabled and the feature is turned off	| 	Yes
[Start/StartLayout](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-start#start-startlayout)	| Configuration dependent	| 	No
[WindowsLogon/DontDisplayNetworkSelectionUI](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowslogon#windowslogon-dontdisplaynetworkselectionui)	| 	&lt;Enabled/&gt;	| 	Yes

