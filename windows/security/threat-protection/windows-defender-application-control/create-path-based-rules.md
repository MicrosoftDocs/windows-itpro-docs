---
title: Windows Defender Application Control path-based rules (Windows 10)
description: Beginning with Windows 10 version 1903, Windows Defender Application Control (WDAC) policies can contain path-based rules.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mdsakibMSFT
ms.date: 05/17/2019
---

# Create Windows Defender Application Control path-based rules 

**Applies to:**

-   Windows 10
-   Windows Server 2016

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

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

