---
title: Understanding AppLocker allow and deny actions on rules
description: This article explains the differences between allow and deny actions on AppLocker rules.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Understanding AppLocker allow and deny actions on rules

This article explains the differences between allow and deny actions on AppLocker rules.

## Allow action versus deny action on rules

Each AppLocker rule collection functions as an explicit allowlist of files. You can only run files that are covered by one or more allow rules within the rule collection. You can also create rules that explicitly deny some files from running. All other files not covered by an explicit Allow or Deny rule are *implicitly* blocked from running. Understanding this **block by default, allow by exception** behavior is critical when analyzing how your policy affects users in your organization.

When AppLocker applies rules, it first checks whether any explicit deny actions are specified in the rule list. If you deny a file from running in a rule collection, the deny action takes precedence over any allow action and can't be overridden. Then, AppLocker checks for any explicit allow actions for the file. Because AppLocker functions as an allowlist by default, if no rule explicitly allows or denies a file from running, AppLocker's default deny action blocks the file.

### Using AppLocker to implement a blocklist

Although you can use AppLocker to create an explicit blocklist policy, this approach doesn't scale well for most organizations and isn't recommended as a practical application control strategy. However, if you choose to do so, be sure to include an "allow \*" rule within the rule collection so that all other files run.

> [!IMPORTANT]
> If you don't include allow rules for all required apps, including Windows system files, within a rule collection, you will cause unexpected results because your policy will *implicitly* deny all other files on the computer from running.

## Related articles

- [How AppLocker works](how-applocker-works-techref.md)
