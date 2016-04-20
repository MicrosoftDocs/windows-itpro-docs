---
title: Requirements to use AppLocker (Windows 10)
description: This topic for the IT professional lists software requirements to use AppLocker on the supported Windows operating systems.
ms.assetid: dc380535-071e-4794-8f9d-e5d1858156f0
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Requirements to use AppLocker


**Applies to**

-   Windows 10

This topic for the IT professional lists software requirements to use AppLocker on the supported Windows operating systems.

## General requirements


To use AppLocker, you need:

-   A device running a supported operating system to create the rules. The computer can be a domain controller.

-   For Group Policy deployment, at least one device with the Group Policy Management Console (GPMC) or Remote Server Administration Tools (RSAT) installed to host the AppLocker rules.

-   Devices running a supported operating system to enforce the AppLocker rules that you create.

**Note**  
You can use Software Restriction Policies with AppLocker, but with some limitations. For more info, see [Use AppLocker and Software Restriction Policies in the same domain](use-applocker-and-software-restriction-policies-in-the-same-domain.md).

 

## Operating system requirements


The following table show the on which operating systems AppLocker features are supported.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Version</th>
<th align="left">Can be configured</th>
<th align="left">Can be enforced</th>
<th align="left">Available rules</th>
<th align="left">Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 10</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Packaged apps</p>
<p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p>You can use the [AppLocker CSP](http://msdn.microsoft.com/library/windows/hardware/dn920019.aspx) to configure AppLocker policies on any edition of Windows 10. You can only manage AppLocker with Group Policy on devices running Windows 10 Enterprise and Windows Server 2016 Technical Preview.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 R2</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Packaged apps</p>
<p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 8.1</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Packaged apps</p>
<p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p>Only the Enterprise edition supports AppLocker</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows RT 8.1</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2012 Standard</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Packaged apps</p>
<p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 Datacenter</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Packaged apps</p>
<p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 8 Pro</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8 Enterprise</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Packaged apps</p>
<p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows RT</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2 Standard</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p>Packaged app rules will not be enforced.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2 Enterprise</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p>Packaged app rules will not be enforced.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2 Datacenter</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p>Packaged app rules will not be enforced.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2 for Itanium-Based Systems</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p>Packaged app rules will not be enforced.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 7 Ultimate</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p>Packaged app rules will not be enforced.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7 Enterprise</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p>Packaged app rules will not be enforced.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 7 Professional</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Executable</p>
<p>Windows Installer</p>
<p>Script</p>
<p>DLL</p></td>
<td align="left"><p>No AppLocker rules are enforced.</p></td>
</tr>
</tbody>
</table>

 

AppLocker is not supported on versions of the Windows operating system not listed above. Software Restriction Policies can be used with those versions. However, the SRP Basic User feature is not supported on the above operating systems.

## See also


[Administer AppLocker](administer-applocker.md)


[Monitor app usage with AppLocker](monitor-application-usage-with-applocker.md)


[Optimize AppLocker performance](optimize-applocker-performance.md)


[Use AppLocker and Software Restriction Policies in the same domain](use-applocker-and-software-restriction-policies-in-the-same-domain.md)


[Manage packaged apps with AppLocker](manage-packaged-apps-with-applocker.md)


[AppLocker Design Guide](applocker-policies-design-guide.md)


 

 





