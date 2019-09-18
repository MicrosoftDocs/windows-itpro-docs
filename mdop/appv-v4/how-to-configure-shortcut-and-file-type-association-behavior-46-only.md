---
title: How to Configure Shortcut and File Type Association Behavior
description: How to Configure Shortcut and File Type Association Behavior
author: dansimp
ms.assetid: d6fd1728-4de6-4066-b36b-d4837d593d40
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure Shortcut and File Type Association Behavior


Shortcut and File Type Association (FTA) publishing policy is defined and controlled by the publishing XML file, which is sent to clients by a publishing server during a publishing refresh operation. When the client receives this information, it adds any newly published data about applications such as the icons and FTAs. Then, it removes any outdated publishing data.

In App-V version 4.6, two registry key values have been defined to enable administrators to control this behavior. By default, shortcuts that are created locally by using the client console are now retained.

## How to Change Shortcut and FTA Behavior


Two new DWORD registry values have been defined for the client Configuration registry key, “FileTypePolicy” and “ShortcutPolicy”. These DWORD registry values are not present by default, but they can be added manually. The Configuration registry key is located at HKEY\_LOCAL\_MACHINE\\SOFTWARE\\\[Wow6432Node\\\]Microsoft\\SoftGrid\\4.5\\Client\\Configuration.

There are four policy values defined in the following table and these apply to both registry key values. The following list shows the numeric values for the registry settings, and the behavior applied to file types or shortcuts on a publishing refresh operation.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>Name</p></td>
<td align="left"><p>Type</p></td>
<td align="left"><p>Data (Examples)</p></td>
<td align="left"><p>Description</p></td>
</tr>
<tr class="even">
<td align="left"><p>FileTypePolicy</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0x2 (App-V 4.6)</p></td>
<td align="left"><p>(0x0) – “ClientOnly”- remove any existing items from the same publishing information source, and keep only items that are added locally</p>
<p>(0x1) – “ServerOnly” - remove any outdated items from the same publishing information source and any items that are added locally, and add the new items</p>
<p>(0x2) – “ClientAndServer”- remove any outdated items from the same publishing information source, keep items added locally, and add the new items (default if not present for App-V 4.6)</p>
<p>(0x3) – “NoChange” - make no changes to file types or shortcuts</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ShortcutPolicy</p></td>
<td align="left"><p>DWORD</p></td>
<td align="left"><p>Default=0x2</p></td>
<td align="left"><p>(0x0) – “ClientOnly”- remove any existing items from the same publishing information source, and keep only items added locally</p>
<p>(0x1) – “ServerOnly” - remove any outdated items from the same publishing information source and any items added locally, and add the new items</p>
<p>(0x2) – “ClientAndServer”- remove any outdated items from the same publishing information source, keep items added locally, and add the new items (default if not present)</p>
<p>(0x3) – “NoChange” - make no changes to file types or shortcuts</p></td>
</tr>
</tbody>
</table>

 

**Note**  
The text values refer to the values for the XML attributes in the publishing XML file.  You can set these values manually if you have implemented a custom HTTP publishing solution.

 

 

 





