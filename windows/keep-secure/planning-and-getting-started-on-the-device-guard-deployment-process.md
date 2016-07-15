---
title: Planning and getting started on the Device Guard deployment process (Windows 10)
description: To help you plan and begin the initial test stages of a deployment of Microsoft Device Guard, this article outlines how to gather information, create a plan, and begin to create and test initial code integrity policies. 
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
author: brianlic-msft
---

# Planning and getting started on the Device Guard deployment process

**Applies to**
-   Windows 10
-   Windows Server 2016

This topic provides a roadmap for planning and getting started on the Device Guard deployment process, with links to topics that provide additional detail. Planning for Device Guard deployment involves looking at both the end-user and the IT pro impact of your choices. Use the following steps to guide you.

**Planning**

1. **Review requirements, especially hardware requirements for VBS**. Review the virtualization-based security (VBS) features described in [How Device Guard features help protect against threats](introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies.md#how-device-guard-features-help-protect-against-threats). Then you can assess your end-user systems to see how many support the VBS features you are interested in, as described in [Hardware, firmware, and software requirements for Device Guard](requirements-and-deployment-planning-guidelines-for-device-guard.md#hardware-firmware-and-software-requirements-for-device-guard). 

2. **Group devices by degree of control needed**. Group devices according to the table in [Device Guard deployment in different scenarios: types of devices](requirements-and-deployment-planning-guidelines-for-device-guard.md#device-guard-deployment-in-different-scenarios-types-of-devices). Do most devices fit neatly into a few categories, or are they scattered across all categories? Are users allowed to install any application or must they choose from a list? Are users allowed to use their own peripheral devices?<br>Deployment is simpler if everything is locked down in the same way, but meeting individual departments’ needs, and working with a wide variety of devices, may require a more complicated and flexible deployment.

3. **Review how much variety in software and hardware is needed by roles or departments**. When several departments all use the same hardware and software, you might need to deploy only one code integrity policy for them. More variety across departments might mean you need to create and manage more code integrity policies. The following questions can help you clarify how many code integrity policies to create:
    - How standardized is the hardware?<br>This can be relevant because of drivers. You could create a code integrity policy on hardware that uses a particular set of drivers, and if other drivers in your environment use the same signature, they would also be allowed to run. However, you might need to create several code integrity policies on different "reference" hardware, then merge the policies together, to ensure that the resulting policy recognizes all the drivers in your environment.

    - Is there already a list of accepted applications?<br>A list of accepted applications can be used to help create a baseline code integrity policy.
        
    - What software does each department or role need? Should they be able to install and run other departments’ software?<br>If multiple departments are allowed to run the same list of software, you might be able to merge several code integrity policies to simplify management.
         
    - Are there departments or roles where unique, restricted software is used?<br>If one department needs to run an application that no other department is allowed, it might require a separate code integrity policy. Similarly, if only one department must run an old version of an application (while other departments allow only the newer version), it might require a separate code integrity policy.

4.  **Identify LOB applications that are currently unsigned**. Although requiring signed code (through code integrity policies) protects against many threats, your organization might use unsigned LOB applications, for which the process of signing might be difficult. You might also have applications that are signed, but you want to add a secondary signature to them. If so, identify these applications, because you will need to create a catalog file for them. For a basic description of catalog files, see the table in [Introduction to Device Guard: virtualization-based security and code integrity policies](introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies.md). For more background information about catalog files, see [Reviewing your applications: application signing and catalog files](requirements-and-deployment-planning-guidelines-for-device-guard.md#reviewing-your-applications-application-signing-and-catalog-files).

**Getting started on the deployment process**

1.  **Optionally, create a signing certificate for code integrity policies**. As you deploy code integrity policies, you might need to sign catalog files or code integrity policies internally. To do this, you will either need a publicly issued code signing certificate (that you purchase) or an internal CA. If you choose to use an internal CA, you will need to create a code signing certificate. For more information, see [Optional: Create a code signing certificate for code integrity policies](optional-create-a-code-signing-certificate-for-code-integrity-policies.md).

2.  **Create code integrity policies from “golden” computers**. When you have identified departments or roles that use distinctive or partly-distinctive sets of hardware and software, you can set up “golden” computers containing that software and hardware. In this respect, creating and managing code integrity policies to align with the needs of roles or departments can be similar to managing corporate images. From each “golden” computer, you can create a code integrity policy, and decide how to manage that policy. You can merge code integrity policies to create a broader policy or a master policy, or you can manage and deploy each policy individually. For more information, see:
    - [Deploy code integrity policies: policy rules and file rules](deploy-code-integrity-policies-policy-rules-and-file-rules.md)
    - [Deploy code integrity policies: steps](deploy-code-integrity-policies-steps.md)<br>

3.  **Audit the code integrity policy and capture information about applications that are outside the policy**. We recommend that you use “audit mode” to carefully test each code integrity policy before you enforce it. With audit mode, no application is blocked—the policy just logs an event whenever an application outside the policy is started. Later, you can expand the policy to allow these applications, as needed. For more information, see [Audit code integrity policies](deploy-code-integrity-policies-steps.md#audit-code-integrity-policies).

4.  **Create a “catalog file” for unsigned LOB applications**. Use the Package Inspector tool to create and sign a catalog file for your unsigned LOB applications. For more information, review step 4 **Identify LOB applications that are currently unsigned**, earlier in this list, and see [Deploy catalog files to support code integrity policies](deploy-catalog-files-to-support-code-integrity-policies.md). In later steps, you can merge the catalog file's signature into your code integrity policy, so that applications in the catalog will be allowed by the policy. 

6.  **Capture needed policy information from the event log, and merge information into the existing policy as needed**. After a code integrity policy has been running for a time in audit mode, the event log will contain information about applications that are outside the policy. To expand the policy so that it allows for these applications, use Windows PowerShell commands to capture the needed policy information from the event log, and then merge that information into the existing policy. You can merge code integrity policies from other sources also, for flexibility in how you create your final code integrity policies. For more information, see:
    - [Create a code integrity policy that captures audit information from the event log](deploy-code-integrity-policies-steps.md#create-a-code-integrity-policy-that-captures-audit-information-from-the-event-log)
    - [Merge code integrity policies](deploy-code-integrity-policies-steps.md#merge-code-integrity-policies)<br>

7.  **Deploy code integrity policies and catalog files**. After you confirm that you have completed all the preceding steps, you can begin deploying catalog files and taking code integrity policies out of auditing mode. We strongly recommend that you begin this process with a test group of users. This provides a final quality-control validation before you deploy the catalog files and code integrity policies more broadly. For more information, see:
    - [Enforce code integrity policies](deploy-code-integrity-policies-steps.md#enforce-code-integrity-policies)
    - [Deploy and manage code integrity policies with Group Policy](deploy-code-integrity-policies-steps.md#deploy-and-manage-code-integrity-policies-with-group-policy)<br>

8.  **Enable desired hardware (VBS) security features**. Hardware-based security features—also called virtualization-based security (VBS) features—strengthen the protections offered by code integrity policies, as described in [How Device Guard features help protect against threats](introduction-to-device-guard-virtualization-based-security-and-code-integrity-policies.md#how-device-guard-features-help-protect-against-threats). For information about enabling VBS features, see [Deploy Device Guard: enable virtualization-based security](deploy-device-guard-enable-virtualization-based-security.md).

