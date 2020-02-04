---
title: Plan Your Migration (Windows 10)
description: Plan Your Migration
ms.assetid: c951f7df-850e-47ad-b31b-87f902955e3e
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Plan Your Migration


Before you use the User State Migration Tool (USMT) 10.0 to perform your migration, we recommend that you plan your migration carefully. Planning can help your migration proceed smoothly and can reduce the risk of migration failure.

In migration planning, both organizations and individuals must first identify what to migrate, including user settings, applications and application settings, and personal data files and folders. Identifying the applications to migrate is especially important so that you can avoid capturing data about applications that may be phased out.

One of the most important requirements for migrating settings and data is restoring only the information that the destination computer requires. Although the data that you capture on the source computer may be more comprehensive than the restoration data for backup purposes, restoring data or settings for applications that you will not install on the destination system is redundant. This can also introduce instability in a newly deployed computer.

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><a href="usmt-common-migration-scenarios.md" data-raw-source="[Common Migration Scenarios](usmt-common-migration-scenarios.md)">Common Migration Scenarios</a></p></td>
<td align="left"><p>Determine whether you will perform a refresh migration or a replace migration.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="usmt-what-does-usmt-migrate.md" data-raw-source="[What Does USMT Migrate?](usmt-what-does-usmt-migrate.md)">What Does USMT Migrate?</a></p></td>
<td align="left"><p>Learn which applications, user data, and operating system components USMT migrates.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="usmt-choose-migration-store-type.md" data-raw-source="[Choose a Migration Store Type](usmt-choose-migration-store-type.md)">Choose a Migration Store Type</a></p></td>
<td align="left"><p>Choose an uncompressed, compressed, or hard-link migration store.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="usmt-determine-what-to-migrate.md" data-raw-source="[Determine What to Migrate](usmt-determine-what-to-migrate.md)">Determine What to Migrate</a></p></td>
<td align="left"><p>Identify user accounts, application settings, operating system settings, and files that you want to migrate inside your organization.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="usmt-test-your-migration.md" data-raw-source="[Test Your Migration](usmt-test-your-migration.md)">Test Your Migration</a></p></td>
<td align="left"><p>Test your migration before you deploy Windows to all users.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[USMT XML Reference](usmt-xml-reference.md)

 

 





