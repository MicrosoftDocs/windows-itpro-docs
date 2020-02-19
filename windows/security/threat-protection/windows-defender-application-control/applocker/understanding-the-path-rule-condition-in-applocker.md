---
title: Understanding the path rule condition in AppLocker (Windows 10)
description: This topic explains the AppLocker path rule condition, the advantages and disadvantages, and how it is applied.
ms.assetid: 3fa54ded-4466-4f72-bea4-2612031cad43
ms.reviewer: 
ms.author: macapara
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mjcaparas
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Understanding the path rule condition in AppLocker

**Applies to**
- Windows 10
- Windows Server

This topic explains the AppLocker path rule condition, the advantages and disadvantages, and how it is applied.

The path condition identifies an application by its location in the file system of the computer or on the network.

When creating a rule that uses a deny action, path conditions are less secure than publisher and file hash conditions for preventing access to a file because a user could easily copy the file to a different location than the location specified in the rule. Because path rules specify locations within the file system, you should ensure that there are no subdirectories that are writable by non-administrators. For example, if you create a path rule for C:\\ with the allow action, any file under that location will be allowed to run, including within users' profiles. The following table describes the advantages and disadvantages of the path condition.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Path condition advantages</th>
<th align="left">Path condition disadvantages</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><ul>
<li><p>You can easily control many folders or a single file.</p></li>
<li><p>You can use the asterisk (*) as a wildcard character within path rules.</p></li>
</ul></td>
<td align="left"><ul>
<li><p>It might be less secure if a rule that is configured to use a folder path contains subfolders that are writable by non-administrators.</p></li>
<li><p>You must specify the full path to a file or folder when creating path rules so that the rule will be properly enforced.</p></li>
</ul></td>
</tr>
</tbody>
</table>

AppLocker does not enforce rules that specify paths with short names. You should always specify the full path to a file or folder when creating path rules so that the rule will be properly enforced.

The asterisk (\*) wildcard character can be used within **Path** field. The asterisk (\*) character used by itself represents any path. When combined with any string value, the rule is limited to the path of the file and all the files under that path. For example, %ProgramFiles%\\Internet Explorer\\\* indicates that all files and subfolders within the Internet Explorer folder will be affected by the rule.

AppLocker uses path variables for well-known directories in Windows. Path variables are not environment variables. The AppLocker engine can only interpret AppLocker path variables. The following table details these path variables.


|               Windows directory or drive                | AppLocker path variable |      Windows environment variable      |
|---------------------------------------------------------|-------------------------|----------------------------------------|
|                         Windows                         |        %WINDIR%         |              %SystemRoot%              |
|                  System32 and sysWOW64                  |       %SYSTEM32%        |           %SystemDirectory%            |
|             Windows installation directory              |        %OSDRIVE%        |             %SystemDrive%              |
|                      Program Files                      |     %PROGRAMFILES%      | %ProgramFiles% and %ProgramFiles(x86)% |
|        Removable media (for example, CD or DVD)         |       %REMOVABLE%       |                                        |
| Removable storage device (for example, USB flash drive) |          %HOT%          |                                        |

For an overview of the three types of AppLocker rule conditions and explanations of the advantages and disadvantages of each, see [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md).

## Related topics

- [How AppLocker works](how-applocker-works-techref.md)
