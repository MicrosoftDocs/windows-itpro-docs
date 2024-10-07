---
title: Understanding AppLocker rule exceptions
description: This article describes the result of applying AppLocker rule exceptions to rule collections.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Understanding AppLocker rule exceptions

<!-- This topic needs a full re-write. Despite the title and description, it doesn't actually describe how rule exceptions work. Instead, this simply explains how to use a separate rule to allow an app to run for a different set of users. That's a valid scenario but not really an "exception" -->

This article describes the result of applying AppLocker rule exceptions to rule collections.

You can apply AppLocker rules to individual users or a group of users. If you apply a rule to a group of users, the rule affects all users in that group. If you need to allow a subset of a user group to use an app, you can create a special rule for that subset.

For example, the rule "Allow Everyone to run Windows except Registry Editor" allows Everyone to run Windows binaries, but doesn't allow anyone to run Registry Editor (by adding %WINDIR%\regedit.exe as a Path Exception for the rule).
The effect of this rule would prevent users such as Helpdesk personnel from running the Registry Editor, a program that is necessary for their support tasks.
To resolve this problem, create a second rule that applies to the Helpdesk user group: "Allow Helpdesk to run Registry Editor" and add %WINDIR%\regedit.exe as an allowed path. If you create a deny rule that blocks Registry Editor for all users, the deny rule overrides the second rule that allows the Helpdesk user group to run Registry Editor.

## Related articles

- [How AppLocker works](how-applocker-works-techref.md)
