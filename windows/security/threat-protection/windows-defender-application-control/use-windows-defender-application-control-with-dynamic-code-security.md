---
title: Windows Defender Application Control and .NET Hardening (Windows 10)
description: Dynamic Code Security is an application control feature that can verify code loaded by .NET at runtime.
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 08/20/2018
---

# Windows Defender Application Control and .NET hardening 

Historically, Windows Defender Application Control (WDAC) has restricted the set of applications, libraries, and scripts that are allowed to run to those approved by an organization. 
Security researchers have found that some .NET applications may be used to circumvent those controls by using .NET’s capabilities to load libraries from external sources or generate new code on the fly. 
Beginning with Windows 10, version 1803, WDAC features a new capability, called *Dynamic Code Security* to verify code loaded by .NET at runtime. 

When the Dynamic Code Security option is enabled, WDAC policy is applied to libraries that .NET loads from external sources. 
Additionally, it detects tampering in code generated to disk by .NET and blocks loading code that has been tampered with. 

Dynamic Code Security is not enabled by default because existing policies may not account for externally loaded libraries. 
Additionally, a small number of .NET loading features, including loading unsigned assemblies built with System.Reflection.Emit, are not currently supported with Dynamic Code Security enabled. 
Microsoft recommends testing Dynamic Code Security in audit mode before enforcing it to discover whether any new libraries should be included in the policy. 

To enable Dynamic Code Security, add the following option to the `<Rules>` section of your policy: 

```xml
<Rule> 
    <Option>Enabled:Dynamic Code Security</Option> 
</Rule>
```
