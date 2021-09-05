---
title: Lockdown features from Windows Embedded 8.1 Industry (Windows 10)
description: Many of the lockdown features available in Windows Embedded 8.1 Industry have been modified in some form for Windows 10. 
ms.assetid: 3C006B00-535C-4BA4-9421-B8F952D47A14
ms.reviewer: 
manager: dansimp
keywords: lockdown, embedded
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: greg-lindsay
ms.author: greglin
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# Lockdown features from Windows Embedded 8.1 Industry

**Applies to**
-   Windows 10


Many of the lockdown features available in Windows Embedded 8.1 Industry have been modified in some form for Windows 10. This table maps Windows Embedded Industry 8.1 features to Windows 10 Enterprise features, along with links to documentation.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Windows Embedded 8.1 Industry lockdown feature</th>
<th align="left">Windows 10 feature</th>
<th align="left">Changes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449302(v=winembedded.82)" data-raw-source="[Hibernate Once/Resume Many (HORM)](/previous-versions/windows/embedded/dn449302(v=winembedded.82))">Hibernate Once/Resume Many (HORM)</a>: Quick boot to device</p></td>
<td align="left"><a href="/windows-hardware/customize/enterprise/hibernate-once-resume-many-horm-" data-raw-source="[HORM](/windows-hardware/customize/enterprise/hibernate-once-resume-many-horm-)">HORM</a></td>
<td align="left"><p>HORM is supported in Windows 10, version 1607 and later. </p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449332(v=winembedded.82)" data-raw-source="[Unified Write Filter](/previous-versions/windows/embedded/dn449332(v=winembedded.82))">Unified Write Filter</a>: protect a device&#39;s physical storage media</p></td>
<td align="left"><a href="/windows-hardware/customize/enterprise/unified-write-filter" data-raw-source="[Unified Write Filter](/windows-hardware/customize/enterprise/unified-write-filter)">Unified Write Filter</a></td>
<td align="left"><p>The Unified Write Filter is continued in Windows 10.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449298(v=winembedded.82)" data-raw-source="[Keyboard Filter]( https://go.microsoft.com/fwlink/p/?LinkId=626761)">Keyboard Filter</a>: block hotkeys and other key combinations</p></td>
<td align="left"><a href="/windows-hardware/customize/enterprise/keyboardfilter" data-raw-source="[Keyboard Filter](/windows-hardware/customize/enterprise/keyboardfilter)">Keyboard Filter</a></td>
<td align="left"><p>Keyboard filter is added in Windows 10, version 1511. As in Windows Embedded Industry 8.1, Keyboard Filter is an optional component that can be turned on via <strong>Turn Windows Features On/Off</strong>. Keyboard Filter (in addition to the WMI configuration previously available) will be configurable through Windows Imaging and Configuration Designer (ICD) in the SMISettings path.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449423(v=winembedded.82)" data-raw-source="[Shell Launcher](/previous-versions/windows/embedded/dn449423(v=winembedded.82))">Shell Launcher</a>: launch a Windows desktop application on sign-on</p></td>
<td align="left"><a href="/windows-hardware/customize/enterprise/shell-launcher" data-raw-source="[Shell Launcher](/windows-hardware/customize/enterprise/shell-launcher)">Shell Launcher</a></td>
<td align="left"><p>Shell Launcher continues in Windows 10. It is now configurable in Windows ICD under the <strong>SMISettings</strong> category.</p>
<p>Learn <a href="/windows/configuration/kiosk-single-app" data-raw-source="[how to use Shell Launcher to create a kiosk device](./kiosk-single-app.md)">how to use Shell Launcher to create a kiosk device</a> that runs a Windows desktop application.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449251(v=winembedded.82)" data-raw-source="[Application Launcher]( https://go.microsoft.com/fwlink/p/?LinkId=626675)">Application Launcher</a>: launch a Universal Windows Platform (UWP) app on sign-on</p></td>
<td align="left"><a href="/windows/client-management/mdm/assignedaccess-csp" data-raw-source="[Assigned Access](/windows/client-management/mdm/assignedaccess-csp)">Assigned Access</a></td>
<td align="left"><p>The Windows 8 Application Launcher has been consolidated into Assigned Access. Application Launcher enabled launching a Windows 8 app and holding focus on that app. Assigned Access offers a more robust solution for ensuring that apps retain focus.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449395(v=winembedded.82)" data-raw-source="[Dialog Filter](/previous-versions/windows/embedded/dn449395(v=winembedded.82))">Dialog Filter</a>: suppress system dialogs and control which processes can run</p></td>
<td align="left"><a href="/windows/device-security/applocker/applocker-overview" data-raw-source="[AppLocker](/windows/device-security/applocker/applocker-overview)">AppLocker</a></td>
<td align="left"><p>Dialog Filter has been deprecated for Windows 10. Dialog Filter provided two capabilities; the ability to control which processes were able to run, and the ability to prevent dialogs (in practice, system dialogs) from appearing.</p>
<ul>
<li><p>Control over which processes are able to run will now be provided by AppLocker.</p></li>
<li><p>System dialogs in Windows 10 have been replaced with system toasts. To see more on blocking system toasts, see Toast Notification Filter below.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449360(v=winembedded.82)" data-raw-source="[Toast Notification Filter]( https://go.microsoft.com/fwlink/p/?LinkId=626673)">Toast Notification Filter</a>: suppress toast notifications</p></td>
<td align="left">Mobile device management (MDM) and Group Policy</td>
<td align="left"><p>Toast Notification Filter has been replaced by MDM and Group Policy settings for blocking the individual components of non-critical system toasts that may appear. For example, to prevent a toast from appearing when a USB drive is connected, ensure that USB connections have been blocked using the USB-related policies, and turn off notifications from apps.</p>
<p>Group Policy: <strong>User Configuration</strong> &gt; <strong>Administrative Templates</strong> &gt; <strong>Start Menu and Taskbar</strong> &gt; <strong>Notifications</strong></p>
<p>MDM policy name may vary depending on your MDM service. In Microsoft Intune, use <strong>Allow action center notifications</strong> and a <a href="https://go.microsoft.com/fwlink/p/?LinkID=616317" data-raw-source="[custom OMA-URI setting](https://go.microsoft.com/fwlink/p/?LinkID=616317)">custom OMA-URI setting</a> for <strong>AboveLock/AllowActionCenterNotifications</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449279(v=winembedded.82)" data-raw-source="[Embedded Lockdown Manager](/previous-versions/windows/embedded/dn449279(v=winembedded.82))">Embedded Lockdown Manager</a>: configure lockdown features</p></td>
<td align="left"><a href="/windows/configuration/provisioning-packages/provisioning-install-icd" data-raw-source="[Windows Imaging and Configuration Designer (ICD)](./provisioning-packages/provisioning-install-icd.md)">Windows Imaging and Configuration Designer (ICD)</a></td>
<td align="left"><p>The Embedded Lockdown Manager has been deprecated for Windows 10 and replaced by the Windows ICD. Windows ICD is the consolidated tool for Windows imaging and provisioning scenarios and enables configuration of all Windows settings, including the lockdown features previously configurable through Embedded Lockdown Manager.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449350(v=winembedded.82)" data-raw-source="[USB Filter](/previous-versions/windows/embedded/dn449350(v=winembedded.82))">USB Filter</a>: restrict USB devices and peripherals on system</p></td>
<td align="left">MDM and Group Policy</td>
<td align="left"><p>The USB Filter driver has been replaced by MDM and Group Policy settings for blocking the connection of USB devices.</p>
<p>Group Policy: <strong>Computer Configuration</strong> &gt; <strong>Administrative Templates</strong> &gt; <strong>System</strong> &gt; <strong>Device Installation</strong> &gt; <strong>Device Installation Restrictions</strong></p>
<p>MDM policy name may vary depending on your MDM service. In Microsoft Intune, use <strong>Allow removable storage</strong> or <strong>Allow USB connection (Windows 10 Mobile only)</strong>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449303(v=winembedded.82)" data-raw-source="[Assigned Access](/previous-versions/windows/embedded/dn449303(v=winembedded.82))">Assigned Access</a>: launch a UWP app on sign-in and lock access to system</p></td>
<td align="left"><a href="/windows/client-management/mdm/assignedaccess-csp" data-raw-source="[Assigned Access](/windows/client-management/mdm/assignedaccess-csp)">Assigned Access</a></td>
<td align="left"><p>Assigned Access has undergone significant improvement for Windows 10. In Windows 8.1, Assigned Access blocked system hotkeys and edge gestures, and non-critical system notifications, but it also applied some of these limitations to other accounts on the device.</p>
<p>In Windows 10, Assigned Access no longer affects accounts other than the one being locked down. Assigned Access now restricts access to other apps or system components by locking the device when the selected user account logs in and launching the designated app above the lock screen, ensuring that no unintended functionality can be accessed.</p>
<p>Learn <a href="/windows/configuration/kiosk-single-app" data-raw-source="[how to use Assigned Access to create a kiosk device](./kiosk-single-app.md)">how to use Assigned Access to create a kiosk device</a> that runs a Universal Windows app.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449374(v=winembedded.82)" data-raw-source="[Gesture Filter](/previous-versions/windows/embedded/dn449374(v=winembedded.82))">Gesture Filter</a>: block swipes from top, left, and right edges of screen</p></td>
<td align="left">MDM and Group Policy</td>
<td align="left"><p>In Windows 8.1, gestures provided the ability to close an app, to switch apps, and to reach the Charms. In Windows 10, Charms have been removed. In Windows 10, version 1607, you can block swipes using the <a href="/windows/client-management/mdm/policy-configuration-service-provider#LockDown_AllowEdgeSwipe" data-raw-source="[Allow edge swipe](/windows/client-management/mdm/policy-configuration-service-provider#LockDown_AllowEdgeSwipe)">Allow edge swipe</a> policy. </p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449309(v=winembedded.82)" data-raw-source="[Custom Logon]( https://go.microsoft.com/fwlink/p/?LinkId=626759)">Custom Logon</a>: suppress Windows UI elements during Windows sign-on, sign-off, and shutdown</p></td>
<td align="left"><a href="/windows-hardware/customize/desktop/unattend/microsoft-windows-embedded-embeddedlogon" data-raw-source="[Embedded Logon](/windows-hardware/customize/desktop/unattend/microsoft-windows-embedded-embeddedlogon)">Embedded Logon</a></td>
<td align="left"><p>No changes. Applies only to Windows 10 Enterprise and Windows 10 Education.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="/previous-versions/windows/embedded/dn449249(v=winembedded.82)" data-raw-source="[Unbranded Boot](/previous-versions/windows/embedded/dn449249(v=winembedded.82))">Unbranded Boot</a>: custom brand a device by removing or replacing Windows boot UI elements</p></td>
<td align="left"><a href="/windows-hardware/customize/enterprise/unbranded-boot" data-raw-source="[Unbranded Boot](/windows-hardware/customize/enterprise/unbranded-boot)">Unbranded Boot</a></td>
<td align="left"><p>No changes. Applies only to Windows 10 Enterprise and Windows 10 Education.</p></td>
</tr>
</tbody>
</table>
 
 
