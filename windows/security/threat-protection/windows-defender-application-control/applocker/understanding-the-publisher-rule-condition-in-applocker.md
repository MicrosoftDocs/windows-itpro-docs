---
title: Understanding the publisher rule condition in AppLocker (Windows)
description: This topic explains the AppLocker publisher rule condition, what controls are available, and how it's applied.
ms.assetid: df61ed8f-a97e-4644-9d0a-2169f18c1c4f
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Understanding the publisher rule condition in AppLocker

**Applies to**

- Windows 10
- Windows 11
- Windows Server 2016 and above

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic explains the AppLocker publisher rule condition, what controls are available, and how it's applied.

Publisher conditions can be made only for files that are digitally signed; this condition identifies an app based on its digital signature and extended attributes. The digital signature contains information about the company that created the app (the publisher). The extended attributes, which are obtained from the binary resource, contain the name of the product that the app is part of and the version number of the app. The publisher may be a software development company, such as Microsoft, or the Information Technology department of your organization.
Publisher conditions are easier to maintain than file hash conditions and are more secure than path conditions. Rules that are specified to the version level might have to be updated when a new version of the file is released. The following table describes the advantages and disadvantages 
of the publisher condition.

|Publisher condition advantages|Publisher condition disadvantages|
|--- |--- |
|<li>Frequent updating isn't required.<li>You can apply different values within a certificate.<li>A single rule can be used to allow an entire product suite.<li>You can use the asterisk (*) wildcard character within a publisher rule to specify that any value should be matched.|<li>The file must be signed.<li>Although a single rule can be used to allow an entire product suite, all files in the suite must be signed uniformly.|
 
Wildcard characters can be used as values in the publisher rule fields according to the following specifications:

-   **Publisher**

    The asterisk (\*) character used by itself represents any publisher. When combined with any string value, the rule is limited to the publisher with a value in the signed certificate that matches the character string. In other words, the asterisk isn't treated as a wildcard character if used with other characters in this field. For example, using the characters "M\*" limits the publisher name to only a publisher with the name "M\*." Using the characters "\*x\*" limits the publisher name only to the name “\*x\*”. A question mark (?) isn't a valid wildcard character in this field.

-   **Product name**

    The asterisk (\*) character used by itself represents any product name. When combined with any string value, the rule is limited to the product of the publisher with a value in the signed certificate that matches the character string. In other words, the asterisk isn't treated as a wildcard character if used with other characters in this field. A question mark (?) isn't a valid wildcard character in this field.

-   **File name**

    Either the asterisk (\*) or question mark (?) characters used by themselves represent any and all file names. When combined with any string value, the string is matched with any file name containing that string.

-   **File version**

    The asterisk (\*) character used by itself represents any file version. If you want to limit the file version to a specific version or as a starting point, you can state the file version and then use the following options to apply limits:

    -   **Exactly**. The rule applies only to this version of the app
    -   **And above**. The rule applies to this version and all later versions.
    -   **And Below**. The rule applies to this version and all earlier versions.

The following table describes how a publisher condition is applied.

| Option | The publisher condition allows or denies…|
| - | - |
| **All signed files** | All files that are signed by a publisher.| 
| **Publisher only** | All files that are signed by the named publisher.| 
| **Publisher and product name** | All files for the specified product that are signed by the named publisher.| 
| **Publisher, product name, and file name** | Any version of the named file for the named product that is signed by the publisher.| 
| **Publisher, product name, file name, and file version** | **Exactly**<br/>The specified version of the named file for the named product that is signed by the publisher.| 
| **Publisher, product name, file name, and file version** | **And above**<br/>The specified version of the named file and any new releases for the product that are signed by the publisher.| 
| **Publisher, product name, file name, and file version**| **And below**<br/>The specified version of the named file and any older versions for the product that are signed by the publisher.| 
| **Custom** | You can edit the **Publisher**, **Product name**, **File name**, and **Version** fields to create a custom rule.| 
 
For an overview of the three types of AppLocker rule conditions and explanations of the advantages and disadvantages of each, see [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md).

## Related topics

- [How AppLocker works](how-applocker-works-techref.md)
