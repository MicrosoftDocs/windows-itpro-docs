---
title: Deploy Windows Defender Application Control with Intelligent Security Graph (ISG) (Windows 10)
description: Automatically authorize applications that Microsoft’s ISG recognizes as having known good reputation.
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
author: dansimp
ms.date: 06/14/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# Use Windows Defender Application Control (WDAC) with the Microsoft Intelligent Security Graph 

**Applies to:**

-   Windows 10
-   Windows Server 2016

Application execution control can be difficult to implement in enterprises that do not have processes to effectively control the deployment of applications centrally through an IT managed system. 
In such environments, users are empowered to acquire the applications they need for work, making accounting for all the applications that would need to be authorized for execution control a daunting task.  

Windows 10, version 1709 (also known as the Windows 10 Fall Creators Update) provides a new option, known as Intelligent Security Graph (ISG) authorization, that allows IT administrators to automatically authorize applications that Microsoft’s ISG recognizes as having known good reputation. The ISG option helps IT organizations take a significant first step towards going from having no application control at all to a simple means of preventing the execution of unknown and known bad software.

## How does the integration between WDAC and the Intelligent Security Graph work? 

The ISG relies on Microsoft’s vast security intelligence and machine learning analytics to help classify applications as having known good reputation. When users download applications on a system with WDAC enabled with the ISG authorization option specified, the reputation of the downloaded file, commonly an installer, is used to determine whether to run the installer and then that original reputation information is passed along to any files that were written by the installer. When any of these files try to execute after they are installed, the reputation data is used to help make the right policy authorization decision.   

After that initial download and installation, the WDAC component will check for the presence of the positive reputation information when evaluating other application execution control rules specified in the policy. If there are no deny rules present for the file, it will be authorized based on the known good reputation classification.  

The reputation data on the client is rechecked periodically and enterprises can also specify that any cached reputation results are flushed on reboot.    

>[!NOTE]
>Admins needs to ensure that there is a WDAC policy in place to allow the system to boot and run any other authorized applications that may not be classified as being known good by the Intelligent Security Graph, for example custom line-of-business (LOB) apps. Since the Intelligent Security Graph is powered by global prevalence data, internal LOB apps may not be recognized as being known good. Other mechanisms like managed installer and explicit rules will help cover internal applications. Both System Center Configuration Manager (SCCM) and Microsoft Intune can be used to create and push a WDAC policy to your client machines.  

Other examples of WDAC policies are available in C:\Windows\schemas\CodeIntegrity\ExamplePolicies and can help authorize Windows OS components, WHQL signed drivers and all Store apps. Admins can reference and customize them as needed for their Windows Defender Application Control deployment or [create a custom WDAC policy](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/create-initial-default-policy). 

## Configuring Intelligent Security Graph authorization for Windows Defender Application Control 

Setting up the ISG authorization is easy regardless of what management solution you use. Configuring the ISG option involves these basic steps: 

- [Ensure that the ISG option is enabled in the WDAC policy XML](#ensure-that-the-intelligent-security-graph-option-is-enabled-in-the-wdac-policy-xml) 
- [Enable the necessary services to allow WDAC to use the ISG correctly on the client](#enable-the-necessary-services-to-allow-wdac-to-use-the-isg-correctly-on-the-client) 

### Ensure that the Intelligent Security Graph option is enabled in the WDAC policy XML 

In order to enable trust for executables based on classifications in the ISG, the **Enabled:Intelligent Security Graph authorization** option must be specified in the WDAC policy. This can be done with the Set-RuleOption cmdlet. In addition, it is recommended from a security perspective to also enable the **Enabled:Invalidate EAs on Reboot** option to invalidate the cached ISG results on reboot to force rechecking of applications against the ISG. Caution is advised if devices will regularly transition to and from environments that may not be able to access the ISG. The following example shows both options being set. 

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

In order for the heuristics used by the ISG to function properly, a number of component in Windows need to be enabled. The easiest way to do this is to run the appidtel executable in c:\windows\system32.

```
appidtel start
```

For WDAC policies deployed over MDM using the AppLocker CSP this step is not required as the CSP will enable the necessary components. ISG enabled through the SCCM WDAC UX will not need this step but if custom policies are being deployed outside of the WDAC UX through SCCM then this step is required.   

## Security considerations with using the Intelligent Security Graph 

Since the ISG is a heuristic-based mechanism, it does not provide the same security guarantees that explicit allow or deny rules do. It is best suited for deployment to systems where each user is configured as a standard user and there are other monitoring systems in place like Windows Defender Advanced Threat Protection to help provide optics into what users are doing. 

Users with administrator privileges or malware running as an administrator user on the system may be able to circumvent the intent of WDAC when the ISG option is allowed by circumventing or corrupting the heuristics used to assign reputation to application executables. The ISG option uses the same heuristic tracking as managed installer and so for application installers that include an option to automatically run the application at the end of the installation process the heuristic may over-authorize.  

## Known limitations with using the Intelligent Security Graph

Since the ISG relies on identifying executables as being known good, there are cases where it may classify legitimate executables as unknown, leading to blocks that need to be resolved either with a rule in the WDAC policy, a catalog signed by a certificate trusted in the WDAC policy or by deployment through a WDAC managed installer. Typically, this is due to an installer or application using a dynamic file as part of execution. These files do not tend to build up known good reputation. Auto-updating applications have also been observed using this mechanism and may be flagged by the ISG.  

Modern apps are not supported with the ISG heuristic and will need to be separately authorized in your WDAC policy. As modern apps are signed by the Microsoft Store and Microsoft Store for Business. it is straightforward to authorize modern apps with signer rules in the WDAC policy.

The ISG heuristic does not authorize kernel mode drivers. The WDAC policy must have rules that allow the necessary drivers to run.  

In some cases, the code integrity logs where WDAC errors and warnings are written will contain error events for native images generated for .NET assemblies. Typically, the error is functionally benign as a blocked native image will result in the corresponding assembly being re-interpreted. Review for functionality and performance for the related applications using the native images maybe necessary in some cases. 

>[!NOTE]
> A rule that explicitly allows an application will take precedence over the ISG rule that does not allow it. In this scenario, this policy is not compatible with Intune, where there is no option to add rules to the template that enables ISG. In most circumstances you would need to build a custom WDAC policy, including ISG if desired.
