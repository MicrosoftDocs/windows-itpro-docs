---
title: 'Using Internet Settings (.INS) Files'
description: Using Internet Settings (.INS) Files
ms.assetid: a24a7cdb-681e-4f34-a53c-6d8383c5f977
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
---

# Using Internet Settings (.INS) Files


Use Internet Explorer Administration Kit 11 (IEAK 11) to configure your Internet Settings (.ins) files, configuring your custom browser and its components. You can create multiple versions of your custom package by customizing copies of this file.

The .ins file includes these sections:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Section</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/branding-ins-file-setting">[Branding]: .INS file setting</a>
<td align="left"><p>Information about the custom branding and setup information in your browser package.</p></td>
</tr>
<tr class="even">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/browsertoolbars-ins-file-setting">[BrowserToolbars]: .INS file setting</a>
<td align="left"><p>Customize the appearance of the IE toolbar.</p></td>
</tr>
<tr class="odd">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/cabsigning-ins-file-setting">[CabSigning]: .INS file setting</a>
<td align="left"><p>Digital signature information for your programs.</p></td>
</tr>
<tr class="even">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/connectionsettings-ins-file-setting">[ConnectionSettings]: .INS file setting</a>
<td align="left"><p>Information about the dial-up networking connection settings used to install your custom package. This section creates a common configuration on all of your employee’s computers.</p></td>
</tr>
<tr class="odd">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/custombranding-ins-file-setting">[CustomBranding]: .INS file setting</a>
<td align="left"><p>URL location to your branding cabinet (.cab) file.</p></td>
</tr>
<tr class="even">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/extreginf-ins-file-setting">[ExtRegInf]: .INS file setting</a>
<td align="left"><p>Names of your Setup information (.inf) files and the installation mode for components.</p></td>
</tr>
<tr class="odd">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/favoritesex-ins-file-setting">[FavoritesEx]: .INS file setting</a>
<td align="left"><p>Path to your icon file for <strong>Favorites</strong> and if <strong>Favorites</strong> are available offline. You can also use this section to add URLs to each <strong>Favorites</strong> site.</p></td>
</tr>
<tr class="even">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/hidecustom-ins-file-setting">[HideCustom]: .INS file setting</a>
<td align="left"><p>Determines whether to hide the globally unique identifier (GUID) for each custom component.</p></td>
</tr>
<tr class="odd">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/isp-security-ins-file-setting">[ISP_Security]: .INS file setting</a>
<td align="left"><p>The root certificate you’re adding to your custom package.</p></td>
</tr>
<tr class="even">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/media-ins-file-setting">[Media]: .INS file setting</a>
<td align="left"><p>The types of media your custom installation package is available in, such as DVD.</p></td>
</tr>
<tr class="odd">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/proxy-ins-file-setting">[Proxy]: .INS file setting</a>
<td align="left"><p>Determines whether to use a proxy server. If yes, this also includes the host names for the proxy server.</p></td>
</tr>
<tr class="even">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/security-imports-ins-file-setting">[Security Imports]: .INS file setting</a>
<td align="left"><p>Determines whether to import security information from your local computer to your custom package.</p></td>
</tr>
<tr class="odd">
<td><a href="http://technet.microsoft.com/en-us/itpro/windows/url-ins-file-setting">[URL]: .INS file setting</a>
<td align="left"><p>Determines whether to use an auto-configured proxy server. If yes, this also includes the URLs to the pages that appear when your employees first connect to that server.</p></td>
</tr>
</tbody>
</table>

 

 

 





