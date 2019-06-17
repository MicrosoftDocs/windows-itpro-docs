---
title: Planning and getting started on the Windows Defender Application Control deployment process (Windows 10)
description: To help you plan and begin the initial test stages of a deployment of Microsoft Windows Defender Application Control, this article outlines how to gather information, create a plan, and begin to create and test initial code integrity policies. 
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
author: dansimp
ms.date: 05/16/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# Planning and getting started on the Windows Defender Application Control deployment process

**Applies to**
-   Windows 10
-   Windows Server 2016

This topic provides a roadmap for planning and getting started on the Windows Defender Application Control (WDAC) deployment process, with links to topics that provide additional detail. Planning for WDAC deployment involves looking at both the end-user and the IT pro impact of your choices. 

## Planning

1. Review requirements, especially hardware requirements for VBS. 

2. Group devices by degree of control needed. Do most devices fit neatly into a few categories, or are they scattered across all categories? Are users allowed to install any application or must they choose from a list? Are users allowed to use their own peripheral devices?<br>Deployment is simpler if everything is locked down in the same way, but meeting individual departments’ needs, and working with a wide variety of devices, may require a more complicated and flexible deployment.

3. Review how much variety in software and hardware is needed by roles or departments. The following questions can help you clarify how many WDAC policies to create:

   - How standardized is the hardware?<br>This can be relevant because of drivers. You could create a WDAC policy on hardware that uses a particular set of drivers, and if other drivers in your environment use the same signature, they would also be allowed to run. However, you might need to create several WDAC policies on different "reference" hardware, then merge the policies together, to ensure that the resulting policy recognizes all the drivers in your environment.

   - What software does each department or role need? Should they be able to install and run other departments’ software?<br>If multiple departments are allowed to run the same list of software, you might be able to merge several WDAC policies to simplify management.
         
   - Are there departments or roles where unique, restricted software is used?<br>If one department needs to run an application that no other department is allowed, it might require a separate WDAC policy. Similarly, if only one department must run an old version of an application (while other departments allow only the newer version), it might require a separate WDAC policy.

   - Is there already a list of accepted applications?<br>A list of accepted applications can be used to help create a baseline WDAC policy.<br>As of Windows 10, version 1703, it might also be useful to have a list of plug-ins, add-ins, or modules that you want to allow only in a specific app (such as a line-of-business app). Similarly, it might be useful to have a list of plug-ins, add-ins, or modules that you want to block in a specific app (such as a browser).

   - As part of a threat review process, have you reviewed systems for software that can load arbitrary DLLs or run code or scripts? 
     In day-to-day operations, your organization’s security policy may allow certain applications, code, or scripts to run on your systems depending on their role and the context. However, if your security policy requires that you run only trusted applications, code, and scripts on your systems, you may decide to lock these systems down securely with Windows Defender Application Control policies. 
    
     Legitimate applications from trusted vendors provide valid functionality. However, an attacker could also potentially use that same functionality to run malicious executable code that could bypass WDAC.

     For operational scenarios that require elevated security, certain applications with known Code Integrity bypasses may represent a security risk if you whitelist them in your WDAC policies. Other applications where older versions of the application had vulnerabilities also represent a risk. Therefore, you may want to deny or block such applications from your WDAC policies. For applications with vulnerabilities, once the vulnerabilities are fixed you can create a rule that only allows the fixed or newer versions of that application. The decision to allow or block applications depends on the context and on how the reference system is being used.

     Security professionals collaborate with Microsoft continuously to help protect customers. With the help of their valuable reports, Microsoft has identified a list of known applications that an attacker could potentially use to bypass Windows Defender Application Control. Depending on the context, you may want to block these applications. To view this list of applications and for use case examples, such as disabling msbuild.exe, see [Microsoft recommended block rules](microsoft-recommended-block-rules.md).

4. Identify LOB applications that are currently unsigned. Although requiring signed code (through WDAC) protects against many threats, your organization might use unsigned LOB applications, for which the process of signing might be difficult. You might also have applications that are signed, but you want to add a secondary signature to them. If so, identify these applications, because you will need to create a catalog file for them.

## Getting started on the deployment process

1.  Optionally, create a signing certificate for Windows Defender Application Control. As you deploy WDAC, you might need to sign catalog files or WDAC policies internally. To do this, you will either need a publicly issued code signing certificate (that you purchase) or an internal CA. If you choose to use an internal CA, you will need to [create a code signing certificate](create-code-signing-cert-for-windows-defender-application-control.md).

2.  Create WDAC policies from reference computers. In this respect, creating and managing WDAC policies to align with the needs of roles or departments can be similar to managing corporate images. From each reference computer, you can create a WDAC policy, and decide how to manage that policy. You can [merge](merge-windows-defender-application-control-policies.md) WDAC policies to create a broader policy or a master policy, or you can manage and deploy each policy individually. 

3.  Audit the WDAC policy and capture information about applications that are outside the policy. We recommend that you use [audit mode](audit-windows-defender-application-control-policies.md) to carefully test each WDAC policy before you enforce it. With audit mode, no application is blocked—the policy just logs an event whenever an application outside the policy is started. Later, you can expand the policy to allow these applications, as needed.

4.  Create a [catalog file](deploy-catalog-files-to-support-windows-defender-application-control.md) for unsigned LOB applications. Use the Package Inspector tool to create and sign a catalog file for your unsigned LOB applications. In later steps, you can merge the catalog file's signature into your WDAC policy, so that applications in the catalog will be allowed by the policy. 

6.  Capture needed policy information from the event log, and merge information into the existing policy as needed. After a WDAC policy has been running for a time in audit mode, the event log will contain information about applications that are outside the policy. To expand the policy so that it allows for these applications, use Windows PowerShell commands to capture the needed policy information from the event log, and then merge that information into the existing policy. You can merge WDAC policies from other sources also, for flexibility in how you create your final WDAC policies.

7.  Deploy WDAC policies and catalog files. After you confirm that you have completed all the preceding steps, you can begin deploying catalog files and taking WDAC policies out of auditing mode. We strongly recommend that you begin this process with a test group of users. This provides a final quality-control validation before you deploy the catalog files and WDAC policies more broadly. 

8.  Enable desired virtualization-based security (VBS) features. Hardware-based security features—also called virtualization-based security (VBS) features—strengthen the protections offered by Windows Defender Application Control. 

## Known issues

This section covers known issues with WDAC and Device Guard. Virtualization-based protection of code integrity may be incompatible with some devices and applications, which might cause unexpected failures, data loss, or a blue screen error (also called a stop error). 
Test this configuration in your lab before enabling it in production. 

### MSI Installations are blocked by WDAC

Installing .msi files directly from the internet to a computer protected by WDAC will fail. 
For example, this command will not work:
 
```code
msiexec –i https://download.microsoft.com/download/2/E/3/2E3A1E42-8F50-4396-9E7E-76209EA4F429/Windows10_Version_1511_ADMX.msi
``` 

As a workaround, download the MSI file and run it locally: 

 
```code
msiexec –i c:\temp\Windows10_Version_1511_ADMX.msi  
```


