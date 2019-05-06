---
title: Windows Defender Application Control improvements in Windows 10 version 1903 (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: jsuther1974
ms.date: 05/06/2018
---

# Windows Defender Application Control improvements in Windows 10 version 1903 

**Applies to:**

-   Windows 10
-   Windows Server 2016

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This topic covers improvements introduced in Windows 10, version 1903.

## Path-based rules

Beginning with Windows 10 version 1903, Windows Defender Application Control (WDAC) policies can contain path-based rules.

- New-CIPolicy parameters
  - FilePath: create path rules under path \<path to scan> for anything not user-writeable (at the individual file level)
    ```powershell
    New-CIPolicy -f .\mypolicy.xml -l FilePath -s <path to scan> -u
    ```
    Optionally, add -UserWriteablePaths to ignore user writeability

  - FilePathRule: create a rule where filepath string is directly set to value of \<any path string>
    ```powershell
    New-CIPolicyRule -FilePathRule <any path string>
    ```
    Useful for wildcards like C:\foo\\*

- Usage follows the same flow as per-app rules:
  ```powershell
  $rules = New-CIPolicyRule …
  $rules += New-CIPolicyRule …
  …
  New-CIPolicyRule -f .\mypolicy.xml -u
  ```

- Wildcards supported
  - Suffix (ex. C:\foo\\*) OR Prefix (ex. *\foo\bar.exe)
    - One or the other, not both at the same time
    - Does not support wildcard in the middle (ex. C:\\*\foo.exe)
  - Examples:
    - %WINDIR%\\...
    - %SYSTEM32%\\...
    - %OSDRIVE%\\...

- Disable default FilePath rule protection of enforcing user-writeability. For example, to add “Disabled:Runtime FilePath Rule Protection” to the policy:
  ```powershell
  Set-RuleOption -o 18 .\policy.xml
  ```

## Multiple Policies

Beginning with Windows 10 vesion 1903, WDAC supportd multiple code integrity policies for one device. 


WDAC – Composable (stacked) code integrity policies for supporting multiple code integrity policies
### Precedence
- Multiple base policies: intersection
  - Only applications allowed by both policies run without generating block events
- Base + supplemental policy: union
  - Files that are allowed by the base policy or the supplemental policy are not blocked
