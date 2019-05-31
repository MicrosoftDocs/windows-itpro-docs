---
title: Choosing Which Version of AGPM to Install
description: Choosing Which Version of AGPM to Install
author: mjcaparas
ms.assetid: 31357d2a-bc23-4e15-93f4-0beda8ab7a7b
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 04/05/2017
---


# Choosing Which Version of AGPM to Install


Each release of Microsoft Advanced Group Policy Management (AGPM) supports specific versions of the Windows operating system. We strongly recommend that you run the AGPM Client and AGPM Server on the same line of operating systems. For example, Windows 10 with Windows Server 2016, Windows 8.1 with Windows Server 2012 R2, and so on.

We recommend that you install the AGPM Server on the most recent version of the operating system in the domain. AGPM uses the Group Policy Management Console (GPMC) to back up and restore Group Policy Objects (GPOs). Because newer versions of the GPMC provide additional policy settings that are not available in earlier versions, you can manage more policy settings by using the most recent version of the operating system.

All versions of AGPM can manage only the policy settings that were introduced in the same version or an earlier version of the operating system on which AGPM is running. For example, if you install AGPM 4.0 SP2 on Windows Server 2012, you can manage policy settings that were introduced in Windows Server 2012 or earlier, but you cannot manage policy settings that were introduced later, in Windows 8.1 or Windows Server 2012 R2.

If the version of the GPMC on your AGPM Server is older than the version on the computers that administrators use to manage Group Policy, the AGPM Server will be unable to store any policy settings that are not available in the older version of the GPMC. For a spreadsheet of Group Policy settings included in Windows, see [Group Policy Settings Reference for Windows and Windows Server](https://go.microsoft.com/fwlink/p/?LinkId=613627).

## AGPM 4.0 SP3


If you are using computers that are running Windows 10 to manage GPOs, you must use AGPM 4.0 SP3. You cannot install earlier versions of AGPM on computers that are running the Windows 10 operating system.

Table 1 lists the operating systems on which you can install AGPM 4.0 SP3, and the policy settings that you can manage by using AGPM 4.0 SP3.

**Table 1: AGPM  4.0 SP3 supported operating systems and policy settings**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Supported configurations for the AGPM Server</strong></th>
<th align="left"><strong>Supported configurations for the AGPM Client</strong></th>
<th align="left"><strong>AGPM Support</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2016 or Windows 10</p></td>
<td align="left"><p>Windows Server 2016 or Windows 10</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 R2</p></td>
<td align="left"><p>Windows 10</p></td>
<td align="left"><p>Supported with the caveats outlined in [KB 4015786](https://support.microsoft.com/help/4015786/known-issues-managing-a-windows-10-group-policy-client-in-windows-serv)
</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2012 R2 or Windows 8.1</p></td>
<td align="left"><p>Windows Server 2012 R2 or Windows 8.1</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 R2, Windows Server 2012, or Windows 8.1</p></td>
<td align="left"><p>Windows Server 2012 or Windows 8.1</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows 8.1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows 8.1</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012, Windows Server 2008 R2, or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with Service Pack 1 (SP1)</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2, Windows 8.1, or Windows 7</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2012, Windows Server 2008 R2, Windows 8, or Windows 7</p></td>
<td align="left"><p>Not supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot report or edit policy settings or preference items that exist only in Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2, Windows 8.1, or Windows 7</p></td>
</tr>
</tbody>
</table>

 

## AGPM 4.0 SP2


If you are using computers that are running Windows Server 2012 R2 or Windows 8.1 to manage GPOs, you must use AGPM 4.0 SP2. You cannot install earlier versions of AGPM on computers that are running those operating systems.

Table 1 lists the operating systems on which you can install AGPM 4.0 SP2, and the policy settings that you can manage by using AGPM 4.0 SP2.

**Table 2: AGPM 4.0 SP2 supported operating systems and policy settings**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Supported configurations for the AGPM Server</strong></th>
<th align="left"><strong>Supported configurations for the AGPM Client</strong></th>
<th align="left"><strong>AGPM Support</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2012 R2 or Windows 8.1</p></td>
<td align="left"><p>Windows Server 2012 R2 or Windows 8.1</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 R2, Windows Server 2012, or Windows 8.1</p></td>
<td align="left"><p>Windows Server 2012 or Windows 8.1</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows 8.1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows 8.1</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012, Windows Server 2008 R2, or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with Service Pack 1 (SP1)</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2, Windows 8.1, or Windows 7</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2012, Windows Server 2008 R2, or Windows 7</p></td>
<td align="left"><p>Not supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot report or edit policy settings or preference items that exist only in Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2, Windows 8.1, or Windows 7</p></td>
</tr>
</tbody>
</table>

 

## AGPM 4.0 SP1


Table 2 lists the operating systems on which you can install AGPM 4.0 SP1, and the policy settings that you can manage by using AGPM 4.0 SP1.

**Table 3: AGPM 4.0 SP1 supported operating systems and policy settings**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Supported configurations for the AGPM Server</strong></th>
<th align="left"><strong>Supported configurations for the AGPM Client</strong></th>
<th align="left"><strong>AGPM Support</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows 8.1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2012, Windows Server 2008 R2, or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows Server 2008 R2, or Windows 7</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2012, Windows Server 2008 R2, or Windows 7</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot report or edit policy settings or preference items that exist only in Windows Server 2008 R2, or Windows 7</p></td>
</tr>
</tbody>
</table>

 

## AGPM 4.0


Table 3 lists the operating systems on which you can install AGPM 4.0, and the policy settings that you can manage by using AGPM 4.0.

**Table 4: AGPM 4.0 supported operating systems and policy settings**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Supported operating systems for the AGPM Server</th>
<th align="left">Supported operating systems for the AGPM Client</th>
<th align="left">AGPM Support</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows Server 2008 R2 or Windows 7</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Not supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot report or edit policy settings or preference items that exist only in Windows Server 2008 R2 or Windows 7</p></td>
</tr>
</tbody>
</table>

 

## Versions of AGPM that precede AGPM 4.0


Table 4 lists the operating systems on which you can install the versions of AGPM that precede AGPM 4.0. If an operating system is not listed, you cannot install AGPM on that operating system.

**Table 5: Supported operating systems for versions of AGPM that precede AGPM 4.0**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Version of AGPM that can be installed</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2008</p></td>
<td align="left"><p>3.0</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Vista with SP1</p></td>
<td align="left"><p>3.0</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Vista with no service pack installed (32-bit)</p></td>
<td align="left"><p>2.5</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2003 (32-bit)</p></td>
<td align="left"><p>2.5</p></td>
</tr>
</tbody>
</table>

 

## How to Get MDOP Technologies


AGPM 4.0 SP2 is a part of the Microsoft Desktop Optimization Pack (MDOP). MDOP is part of Microsoft Software Assurance. For more information about Microsoft Software Assurance and acquiring MDOP, see [How Do I Get MDOP](https://go.microsoft.com/fwlink/?LinkId=322049) (https://go.microsoft.com/fwlink/?LinkId=322049).

## Related topics


[Advanced Group Policy Management](index.md)

 

 





