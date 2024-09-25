---
title: Understanding the path rule condition in AppLocker
description: This article explains how to apply the AppLocker path rule condition and its advantages and disadvantages.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Understanding the path rule condition in AppLocker

This article explains how to apply the AppLocker path rule condition and its advantages and disadvantages.

The path condition identifies an application by its location in the file system of the computer or on the network.

Path rules that use the deny action, are less effective than other types of rules, because a user (or malware acting as a user) can easily copy the file to a different location to run it. Because path rules specify locations within the file system, you should ensure that there are no subdirectories that are writable by nonadministrators. For example, if you create a path rule using the allow action for C:\\, any file under that location can run, including file within users' profiles. The following table describes the advantages and disadvantages of the path condition.

|Path condition advantages|Path condition disadvantages|
| --- | --- |
| <li> You can easily control many folders or a single file. <li> You can use the asterisk (*) as a wildcard character within path rules. | <li> It might be less secure if a rule that is configured to use a folder path contains subfolders that are writable by nonadministrators. <li> You must specify the full path to a file or folder when creating path rules so that the rule is properly enforced. |

AppLocker doesn't enforce rules that specify paths with short names. You should always specify the full path to a file or folder when creating path rules so that the rule is properly enforced.

The asterisk (\*) wildcard character can be used within **Path** field. The asterisk (\*) character used by itself represents any path. When combined with any string value, the rule is limited to the path of the file and all the files under that path. For example, %ProgramFiles%\\Internet Explorer\\\* indicates that the rule affects all files and subfolders within the Internet Explorer folder.

AppLocker uses path variables for well-known directories in Windows. Path variables aren't environment variables. The AppLocker engine can only interpret AppLocker path variables. The following table details these path variables.

|               Windows directory or drive                | AppLocker path variable |      Windows environment variable      |
|---------------------------------------------------------|-------------------------|----------------------------------------|
|                         Windows                         |        %WINDIR%         |              %SystemRoot%              |
|                  System32 and sysWOW64                  |       %SYSTEM32%        |           %SystemDirectory%            |
|             Windows installation directory              |        %OSDRIVE%        |             %SystemDrive%              |
|                      Program Files                      |     %PROGRAMFILES%      | %ProgramFiles% and %ProgramFiles(x86)% |
|        Removable media (for example, CD or DVD)         |       %REMOVABLE%       |                                        |
| Removable storage device (for example, USB flash drive) |          %HOT%          |                                        |

For an overview of the three types of AppLocker rule conditions and their advantages and disadvantages of each, see [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md).

## Related articles

- [How AppLocker works](how-applocker-works-techref.md)
