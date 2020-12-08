---
ms.localizationpriority: medium
ms.mktglfcycl: support
description: How to turn managed browser hosting controls back on in Internet Explorer 11.
author: dansimp
ms.prod: ie11
ms.assetid: b0b7f60f-9099-45ab-84f4-4ac64d7bcb43
ms.reviewer: 
audience: itpro
manager: dansimp
ms.author: dansimp
title: .NET Framework problems with Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# .NET Framework problems with Internet Explorer 11

[!INCLUDE [Microsoft 365 workloads end of support for IE11](../includes/microsoft-365-ie-end-of-support.md)]


## Summary

If you’re having problems launching your legacy apps while running Internet Explorer 11, it’s most likely because Internet Explorer no longer starts apps that use managed browser hosting controls, like in .NET Framework 1.1 and 2.0.

 **To turn managed browser hosting controls back on**

1.  **For x86 systems or for 64-bit processes on x64 systems:** Go to the `HKLM\SOFTWARE\MICROSOFT\.NETFramework` registry key and change the **EnableIEHosting** value to **1**.

2.  **For 32-bit processes on x64 systems:** Go to the `HKLM\SOFTWARE\Wow6432Node\MICROSOFT\.NETFramework` registry key and change the **EnableIEHosting** value to **1**.

## More information

IEHost is a Microsoft .NET Framework 1.1-based technology that provides a better model than ActiveX controls to host controls within the browser. The IEHost controls are lightweight and are operated under the .NET security model where they are operated inside a sandbox. 

From the .NET Framework 4, we remove the IEHost.dll file for the following reasons:

- IEHost/HREF-EXE-style controls are exposed to the Internet. This poses a high security risk, and most customers who install the Framework are benefiting very little from this security risk.
- Managed hosting controls and invoking random ActiveX controls may be unsafe, and this risk cannot be countered in the .NET Framework. Therefore, the ability to host is disabled. We strongly suggest that IEHost should be disabled in any production environment.
- Potential security vulnerabilities and assembly versioning conflicts in the default application domain. By relying on COM Interop wrappers to load your assembly, it is implicitly loaded in the default application domain. If other browser extensions do the same function, they have the risks in the default application domain such as disclosing information, and so on. If you are not using strong-named assemblies as dependencies, type loading exceptions can occur. You cannot freely configure the common language runtime (CLR), because you do not own the host process, and you cannot run any code before your extension is loaded.

For more information about .NET Framework application compatibility, see [Application compatibility in the .NET Framework](/dotnet/framework/migration-guide/application-compatibility).
