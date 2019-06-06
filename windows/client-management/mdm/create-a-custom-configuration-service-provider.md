---
title: Create a custom configuration service provider
description: Create a custom configuration service provider
ms.assetid: 0cb37f03-5bf2-4451-8276-23f4a1dee33f
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# Create a custom configuration service provider

Mobile device OEMs can create custom configuration service providers to manage their devices. A configuration service provider includes an interface for creating, editing, and deleting nodes, and the nodes themselves. Each node contains data for one registry value and can optionally support get, set, and delete operations.

To design a custom configuration service provider, the OEM must perform the following steps:

1.  Establish node semantics
2.  Shape the configuration service provider's subtree
3.  Choose a transactioning scheme for each node
4.  Determine node operations

For more information, see [Designing a custom configuration service provider](design-a-custom-windows-csp.md).

To write a custom configuration service provider, the OEM must implement the following interfaces:

-   [IConfigServiceProvider2](iconfigserviceprovider2.md) (one per configuration service provider)

-   [ICSPNode](icspnode.md) (one per node)

-   [ICSPNodeTransactioning](icspnodetransactioning.md) (optional, for internally transactioned nodes only)

-   [ICSPValidate](icspvalidate.md) (optional, for UI only)

This code must be compiled into a single .dll file and added to a package by using the instructions found in "Adding content to a package" in [Creating packages](https://msdn.microsoft.com/library/windows/hardware/dn756642). While writing this code, OEMs can store registry settings and files in the following locations.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>File location</strong></p></td>
<td><p>%DataDrive%\SharedData\OEM\CSP\</p></td>
</tr>
<tr class="even">
<td><p><strong>Registry location</strong></p></td>
<td><p>$(HKLM.SOFTWARE)\OEM\CSP\</p></td>
</tr>
</tbody>
</table>


For examples of how to perform common tasks such as adding a node, replacing a node's value, querying a node's value, or enumerating a node's children, see [Samples for writing a custom configuration service provider](samples-for-writing-a-custom-configuration-service-provider.md).

To register the configuration service provider as a COM object, you must add the following registry setting to your package. This step is required. In the following sample, replace *uniqueCSPguid* with a new, unique CLSID generated for this purpose. Replace *dllName* with the name of the .dll file that contains the code for your configuration service provider.

``` syntax
<RegKeys>
    <RegKey KeyName="$(HKCR.CLASSES)\CLSID\{uniqueCSPguid}\InprocServer32">
        <RegValue Name="@" Type="REG_SZ" Value="dllName.dll" />
    </RegKey>
</RegKeys>
```

To register the configuration service provider with ConfigManager2, you must add the following registry setting to your package. This step is required. In the following sample, replace *dllName* with the name of the configuration service provider (the name of the root node). Replace *uniqueCSPguid* with the same *uniqueCSPguid* value as in the preceding example.

``` syntax
<RegKeys>
   <RegKey KeyName="$(HKLM.SOFTWARE)\Microsoft\Provisioning\CSPs\.\Vendor\OEM\{Name}">
       <RegValue Name="@" Value="{uniqueCSPguid}" Type="REG_SZ"/>
   </RegKey>
</RegKeys>
```

To make the configuration service provider accessible from WAP XML, you must register it with the WAP data processing unit by setting the following registry key in your package. Replace *Name* with the name of the configuration service provider. Leave the GUID value exactly as written here.

``` syntax
<RegKeys>
   <RegKey KeyName="$(HKLM.SOFTWARE)\Classes\Name">
       <RegValue Name="WAPNodeProcessor" Value="{FB11047A-4051-4d1d-9DCA-C80C5DF98D70}" 
          Type="REG_SZ"/>
   </RegKey>
</RegKeys>
```

 






