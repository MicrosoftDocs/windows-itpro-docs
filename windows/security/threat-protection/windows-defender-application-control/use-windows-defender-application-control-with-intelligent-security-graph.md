---
title: Authorize reputable apps with the Intelligent Security Graph (ISG) (Windows 10)
description: Automatically authorize applications that Microsoft’s ISG recognizes as having known good reputation.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 03/10/2020
---

# Authorize reputable apps with the Intelligent Security Graph (ISG) 

**Applies to:**

- Windows 10
- Windows Server 2016 and above

Application execution control can be difficult to implement in enterprises that do not have processes to effectively control the deployment of applications centrally through an IT managed system. In such environments, users are empowered to acquire the applications they need for work, making accounting for all the applications that would need to be authorized for execution control a daunting task.  

Windows 10, version 1709 (also known as the Windows 10 Fall Creators Update) provides a new option, known as the Microsoft Intelligent Security Graph authorization, that allows IT administrators to automatically authorize applications that the Microsoft Intelligent Security Graph recognizes as having known good reputation. The Microsoft Intelligent Security Graph option helps IT organizations take a significant first step towards going from having no application control at all to a simple means of preventing the execution of unknown and known bad software. To learn more about the Microsoft Intelligent Security Graph, see the Security section in [Major services and features in Microsoft Graph](https://docs.microsoft.com/graph/overview-major-services).

## How does the integration between WDAC and the Intelligent Security Graph work? 

The Microsoft Intelligent Security Graph relies on the same vast security intelligence and machine learning analytics which power Microsoft Defender SmartScreen and Microsoft Defender Antivirus to help classify applications as having known good, known bad, or unknown reputation. When an unevaluated file is run on a system with WDAC enabled with the Microsoft Intelligent Security Graph authorization option specified, WDAC queries the file's reputation by sending its hash and signing information to the cloud. If the Microsoft Intelligent Security Graph determines that the file has a known good reputation, the $KERNEL.SMARTLOCKER.ORIGINCLAIM kernel Extended Attribute (EA) is written to the file. Every time the file tries to execute, if there are no explicit deny rules present for the file, it will be allowed to run based on its positive reputation. Conversely, a file that has unknown or known bad reputation will still be allowed to run in the presence of a rule that explicitly allows the file.

Additionally, an application installer which is determined to have known good reputation will pass along that positive reputation to any files that it writes. This way, all the files needed to install and run an app are granted positive reputation data.

WDAC periodically re-queries the reputation data on a file. Additionally, enterprises can specify that any cached reputation results are flushed on reboot by using the **Enabled:Invalidate EAs on Reboot** option.

>[!NOTE]
>Admins should make sure there is a WDAC policy in place to allow the system to boot and run any other authorized applications that may not be classified as being known good by the Intelligent Security Graph, such as custom line-of-business (LOB) apps. Since the Intelligent Security Graph is powered by global prevalence data, internal LOB apps may not be recognized as being known good. Other mechanisms like managed installer and explicit rules will help cover internal applications. Both Microsoft Endpoint Manager Configuration Manager (MEMCM) and Microsoft Endpoint Manager Intune (MEM Intune) can be used to create and push a WDAC policy to your client machines.  

Other examples of WDAC policies are available in `C:\Windows\schemas\CodeIntegrity\ExamplePolicies` and can help authorize Windows OS components, WHQL signed drivers and all Store apps. Admins can reference and customize them as needed for their Windows Defender Application Control deployment or [create a custom WDAC policy](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/create-initial-default-policy). 

## Configuring Intelligent Security Graph authorization for Windows Defender Application Control 

Setting up the Microsoft Intelligent Security Graph authorization is easy regardless of what management solution you use. Configuring the Microsoft Intelligent Security Graph option involves these basic steps: 

- [Ensure that the Microsoft Intelligent Security Graph option is enabled in the WDAC policy XML](#ensure-that-the-intelligent-security-graph-option-is-enabled-in-the-wdac-policy-xml) 
- [Enable the necessary services to allow WDAC to use the Microsoft Intelligent Security Graph correctly on the client](#enable-the-necessary-services-to-allow-wdac-to-use-the-isg-correctly-on-the-client) 

### Ensure that the Intelligent Security Graph option is enabled in the WDAC policy XML 

In order to enable trust for executables based on classifications in the Microsoft Intelligent Security Graph, the **Enabled:Intelligent Security Graph authorization** option must be specified in the WDAC policy. This can be done with the Set-RuleOption cmdlet. In addition, it is recommended from a security perspective to also enable the **Enabled:Invalidate EAs on Reboot** option to invalidate the cached Intelligent Security Graph results on reboot to force rechecking of applications against the Microsoft Intelligent Security Graph. Caution is advised if devices will regularly transition to and from environments that may not be able to access the Microsoft Intelligent Security Graph. The following example shows both options being set. 

```code
<Rules> 
    <Rule> 
      <Option>Enabled:Unsigned System Integrity Policy</Option> 
    </Rule> 
    <Rule> 
      <Option>Enabled:Advanced Boot Options Menu</Option> 
    </Rule> 
    <Rule> 
      <Option>Required:Enforce Store Applications</Option> 
    </Rule> 
    <Rule>
      <Option>Enabled:UMCI</Option>
    </Rule>
    <Rule>
      <Option>Enabled:Managed Installer</Option> 
    </Rule>
    <Rule> 
      <Option>Enabled:Intelligent Security Graph Authorization</Option> 
    </Rule> 
    <Rule> 
      <Option>Enabled:Invalidate EAs on Reboot</Option> 
    </Rule> 
</Rules> 
```

### Enable the necessary services to allow WDAC to use the ISG correctly on the client

In order for the heuristics used by the Microsoft Intelligent Security Graph to function properly, a number of component in Windows must be enabled. The easiest way to do this is to run the appidtel executable in `c:\windows\system32`.

```
appidtel start
```

This step is not required for WDAC policies deployed over MDM using the AppLocker CSP, as the CSP will enable the necessary components. This step is also not required when enabling the Microsoft Intelligent Security Graph through the MEMCM WDAC UX. However, if custom policies are being deployed outside of the WDAC UX through MEMCM, then this step is required.   

## Security considerations with the Intelligent Security Graph 

Since the Microsoft Intelligent Security Graph is a heuristic-based mechanism, it does not provide the same security guarantees that explicit allow or deny rules do. It is best suited for deployment to systems where each user is configured as a standard user and there are other monitoring systems in place like Microsoft Defender Advanced Threat Protection to help provide optics into what users are doing. 

Users with administrator privileges or malware running as an administrator user on the system may be able to circumvent the intent of WDAC when the Microsoft Intelligent Security Graph option is allowed by circumventing or corrupting the heuristics used to assign reputation to application executables. The Microsoft Intelligent Security Graph option uses the same heuristic tracking as managed installer and so for application installers that include an option to automatically run the application at the end of the installation process the heuristic may over-authorize.  

## Known limitations with using the Intelligent Security Graph

Since the Microsoft Intelligent Security Graph relies on identifying executables as being known good, there are cases where it may classify legitimate executables as unknown, leading to blocks that need to be resolved either with a rule in the WDAC policy, a catalog signed by a certificate trusted in the WDAC policy or by deployment through a WDAC managed installer. Typically, this is due to an installer or application using a dynamic file as part of execution. These files do not tend to build up known good reputation. Auto-updating applications have also been observed using this mechanism and may be flagged by the ISG.  

Modern apps are not supported with the Microsoft Intelligent Security Graph heuristics and will need to be separately authorized in your WDAC policy. As modern apps are signed by the Microsoft Store and Microsoft Store for Business, it is straightforward to authorize modern apps with signer rules in the WDAC policy.

The Microsoft Intelligent Security Graph heuristics do not authorize kernel mode drivers. The WDAC policy must have rules that allow the necessary drivers to run.  

In some cases, the code integrity logs where WDAC errors and warnings are written will contain error events for native images generated for .NET assemblies. Typically, the error is functionally benign as a blocked native image will result in the corresponding assembly being re-interpreted. Review for functionality and performance for the related applications using the native images maybe necessary in some cases. 

>[!NOTE]
> A rule that explicitly denies or allows a file will take precedence over that file's reputation data. MEM Intune's built-in WDAC support includes the option to trust apps with good reputation via the Microsoft Intelligent Security Graph, but it has no option to add explicit allow or deny rules. In most circumstances, customers enforcing application control need to deploy a custom WDAC policy (which can include the Microsoft Intelligent Security Graph option if desired) using [Intune's OMA-URI functionality](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/deploy-windows-defender-application-control-policies-using-intune#using-a-custom-oma-uri-profile).
