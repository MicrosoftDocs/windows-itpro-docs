---
title: Policy CSP - Education
description: Learn how to use the Policy CSP - Education setting to control graphing functionality in the Windows Calculator app. 
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Education


<hr/>

<!--Policies-->
## Education policies  

<dl>
  <dd>
    <a href="#education-allowgraphingcalculator">Education/AllowGraphingCalculator</a>
  </dd>
  <dd>
    <a href="#education-defaultprintername">Education/DefaultPrinterName</a>
  </dd>
  <dd>
    <a href="#education-preventaddingnewprinters">Education/PreventAddingNewPrinters</a>
  </dd>
  <dd>
    <a href="#education-printernames">Education/PrinterNames</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="education-allowgraphingcalculator"></a>**Education/AllowGraphingCalculator**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>8</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 2004. This policy setting allows you to control whether graphing functionality is available in the Windows Calculator app. If you disable this policy setting, graphing functionality will not be accessible in the Windows Calculator app. If you enable or don't configure this policy setting, you will be able to access graphing functionality.
<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Allow Graphing Calculator*
-   GP name: *AllowGraphingCalculator*
-   GP path: *Windows Components/Calculator*
-   GP ADMX file name: *Programs.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:  
- 0 - Disabled
- 1 (default) - Enabled
<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="education-defaultprintername"></a>**Education/DefaultPrinterName**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. This policy allows IT Admins to set the user's default printer. 

The policy value is expected to be the name (network host name) of an installed printer.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="education-preventaddingnewprinters"></a>**Education/PreventAddingNewPrinters**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. Allows IT Admins to prevent user installation of additional printers from the printers settings.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP Friendly name: *Prevent addition of printers*
-   GP name: *NoAddPrinter*
-   GP path: *Control Panel/Printers*
-   GP ADMX file name: *Printing.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Allow user installation.
-   1 – Prevent user installation.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="education-printernames"></a>**Education/PrinterNames**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1709. Allows IT Admins to automatically provision printers based on their names (network host names).

The policy value is expected to be a ```&#xF000;``` separated list of printer names.  The OS will attempt to search and install the matching printer driver for each listed printer.

<!--/Description-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->

