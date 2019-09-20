---
title: Planning for Migrating from a Previous Version of App-V
description: Planning for Migrating from a Previous Version of App-V
author: dansimp
ms.assetid: 4a058047-9674-41bc-8050-c58c97a80a9b
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/21/2016
---


# Planning for Migrating from a Previous Version of App-V


Use the following information to plan how to migrate to Microsoft Application Virtualization (App-V) 5.1 from previous versions of App-V.

## Migration requirements


Before you start any upgrades, review the following requirements:

-   If you are upgrading from a version earlier than App-V 4.6 SP2, upgrade to version App-V 4.6 SP3 first before upgrading to App-V 5.1 or later. In this scenario, upgrade the App-V clients first, and then upgrade the server components.
**Note:** App-V 4.6 has exited Mainstream support.

-   App-V 5.1 supports only packages that are created using App-V 5.0 or App-V 5.1, or packages that have been converted to the **.appv** format.

-   If you are upgrading the App-V Server from App-V 5.0 SP1, see [About App-V 5.1](about-app-v-51.md#bkmk-migrate-to-51) for instructions.

## Running the App-V 5.1 client concurrently with App-V 4.6


You can run the App-V 5.1 client concurrently on the same computer with the App-V 4.6 SP3 client.

When you run coexisting App-V clients, you can:

-   Convert an App-V 4.6 SP3 package to the App-V 5.1 format and publish both packages, when you have both clients running.

-   Define the migration policy for the converted package, which allows the converted App-V 5.1 package to assume the file type associations and shortcuts from the App-V 4.6 package.

### Supported coexistence scenarios

The following table shows the supported App-V coexistence scenarios. We recommend that you install the latest available updates of a given release when you are running coexisting clients.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">App-V 4.6 client type</th>
<th align="left">App-V 5.1 client type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V 4.6 SP3</p></td>
<td align="left"><p>App-V 5.1</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V 4.6 SP3 RDS</p></td>
<td align="left"><p>App-V 5.1 RDS</p></td>
</tr>
</tbody>
</table>

 

### Requirements for running coexisting clients

To run coexisting clients, you must:

-   Install the App-V 4.6 client before you install the App-V 5.1 client.

-   Enable the **Enable Migration Mode** Group Policy setting, which is in the **App-V** &gt; **Client Coexistence** node. To deploy the .admx template, see [How to Download and Deploy MDOP Group Policy (.admx) Templates](https://technet.microsoft.com/library/dn659707.aspx).

**Note**  
App-V 5.1 packages can run side by side with App-V 4.6 packages if you have coexisting installations of App-V 5.1 and 4.6. However, App-V 5.1 packages cannot interact with App-V 4.6 packages in the same virtual environment.

 

### Client downloads and documentation

The following table provides links to the App-V 4.6 client downloads and to the TechNet documentation about the releases. The downloads include the App-V “regular” and RDS clients. The TechNet documentation about the App-V client applies to both clients, unless stated otherwise.

<table>
<colgroup>
<col width="33%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">App-V version</th>
<th align="left">Link to TechNet documentation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V 4.6 SP3</p></td>
<td align="left"><p><a href="https://technet.microsoft.com/library/dn511019.aspx" data-raw-source="[About Microsoft Application Virtualization 4.6 SP3](https://technet.microsoft.com/library/dn511019.aspx)">About Microsoft Application Virtualization 4.6 SP3</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V 4.6 SP3</p></td>
<td align="left"><p><a href="about-app-v-51.md" data-raw-source="[About Microsoft Application Virtualization 5.1](about-app-v-51.md)">About Microsoft Application Virtualization 5.1</a></p></td>
</tr>
</tbody>
</table>

 

For more information about how to configure App-V 5.1 client coexistence, see:

-   [How to Deploy the App-V 4.6 and the App-V 5.1 Client on the Same Computer](how-to-deploy-the-app-v-46-and-the-app-v--51-client-on-the-same-computer.md)

-   [App-V 5.0 Coexistence and Migration](https://technet.microsoft.com/windows/jj835811.aspx)

## <a href="" id="converting--previous-version--packages-using-the-package-converter-"></a>Converting “previous-version” packages using the package converter


Before migrating a package, created using App- 4.6 SP2 or earlier, to App-V 5.1, review the following requirements:

-   You must convert the package to the **.appv** file format.

-   The Package Converter supports only the direct conversion of packages that were created by using App-V 4.5 and later. To use the package converter on a package that was created using a previous version, you must use an App-V 4.5 or later version of the sequencer to upgrade the package, and then you can perform the package conversion.

For more information about using the package converter to convert a package, see [How to Convert a Package Created in a Previous Version of App-V](how-to-convert-a-package-created-in-a-previous-version-of-app-v51.md). After you convert the file, you can deploy it to target computers that run the App-V 5.1 client.






## Related topics


[Planning to Deploy App-V](planning-to-deploy-app-v51.md)

 

 





