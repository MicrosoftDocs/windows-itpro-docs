---
title: Understanding the file hash rule condition in AppLocker
description: This article explains how to use the AppLocker file hash rule condition and its advantages and disadvantages.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Understanding the file hash rule condition in AppLocker

This article explains how to use the AppLocker file hash rule condition and its advantages and disadvantages.

File hash rules use a system-computed Authenticode cryptographic hash of the identified file. For files that aren't digitally signed, file hash rules are more secure than path rules. The following table describes the advantages and disadvantages of the file hash condition.

| File hash condition advantages | File hash condition disadvantages |
| --- | --- |
| Because each file has a unique hash, a file hash condition applies to only one file. | Each time that the file is updated (such as a security update or upgrade), the file's Authenticode hash changes. As a result, you must manually update file hash rules. |

For an overview of the three types of AppLocker rule conditions and their advantages and disadvantages of each, see [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md).

## Related articles

- [How AppLocker works](how-applocker-works-techref.md)
