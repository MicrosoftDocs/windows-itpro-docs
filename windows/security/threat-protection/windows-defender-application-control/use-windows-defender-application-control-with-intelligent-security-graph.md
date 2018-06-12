---
title: Deploy Windows Defender Application Control with Intelligent Security Graph (ISG) (Windows 10)
description: Automatically authorize applications that Microsoft’s ISG recognizes as having known good reputation.
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
author: mdsakibMSFT
ms.date: 03/01/2018
---

# Use Windows Defender Application Control (WDAC) with the Microsoft Intelligent Security Graph 

**Applies to:**

-   Windows 10
-   Windows Server 2016


```code
<Rules> 
    <Rule> 
      <Option><b>Enabled:Unsigned System Integrity Policy</b></Option> 
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

## Enable service enforcement in AppLocker policy

Since many installation processes rely on services, it is typically necessary to enable tracking of services. 
Correct tracking of services requires the presence of at least one rule in the rule collection – a simple audit only rule will suffice. 
For example:

```code
<RuleCollection Type="Dll" EnforcementMode="AuditOnly" >
    <FilePathRule Id="86f235ad-3f7b-4121-bc95-ea8bde3a5db5" Name="Dummy Rule" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
      <Conditions>
        <FilePathCondition Path="%OSDRIVE%\ThisWillBeBlocked.dll" />
      </Conditions>
    </FilePathRule>
    <RuleCollectionExtensions>
      <ThresholdExtensions>
        <Services EnforcementMode="Enabled" />
      </ThresholdExtensions>
      <RedstoneExtensions>
        <SystemApps Allow="Enabled"/>
      </RedstoneExtensions>
    </RuleCollectionExtensions>
  </RuleCollection>
  <RuleCollection Type="Exe" EnforcementMode="AuditOnly">
    <FilePathRule Id="9420c496-046d-45ab-bd0e-455b2649e41e" Name="Dummy Rule" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
      <Conditions>
        <FilePathCondition Path="%OSDRIVE%\ThisWillBeBlocked.exe" />
      </Conditions>
    </FilePathRule>
    <RuleCollectionExtensions>
      <ThresholdExtensions>
        <Services EnforcementMode="Enabled" />
      </ThresholdExtensions>
      <RedstoneExtensions>
        <SystemApps Allow="Enabled"/>
      </RedstoneExtensions>
    </RuleCollectionExtensions>
  </RuleCollection>
```

### Enable the managed installer option in WDAC policy

In order to enable trust for the binaries laid down by managed installers, the Allow: Managed Installer option must be specified in your WDAC policy.
This can be done by using the [Set-RuleOption cmdlet](https://docs.microsoft.com/powershell/module/configci/set-ruleoption). 
An example of the managed installer option being set in policy is shown below.

```code
<Rules>  
    <Rule>  
      <Option>Enabled:Unsigned System Integrity Policy</Option>  
    </Rule>  
    <Rule>  
      <Option>Enabled:Advanced Boot Options Menu</Option>  
    </Rule>  
    <Rule>  
      <Option>Enabled:UMCI</Option>  
    </Rule>  
    <Rule>  
      <Option>Enabled:Inherit Default Policy</Option>  
    </Rule>
    <Rule>  
      <Option>Enabled:Managed Installer </Option>  
    </Rule>  
  </Rules>  
```

## Security considerations with managed installer

Since managed installer is a heuristic-based mechanism, it does not provide the same security guarantees that explicit allow or deny rules do. 
It is best suited for deployment to systems where each user is configured as a standard user and where all software is deployed and installed by a software distribution solution, such as System Center Configuration Manager. 

Users with administrator privileges or malware running as an administrator user on the system may be able to circumvent the intent of Windows Defender Application Control when the managed installer option is allowed. 
If the authorized managed installer process performs installations in the context of a user with standard privileges, then it is possible that standard users or malware running as standard user may be able to circumvent the intent of Windows Defender Application Control. 
Some application installers include an option to automatically run the application at the end of the installation process. If this happens when the installer is run by a managed installer, then the managed installer's heuristic tracking and authorization may continue to apply to all files created during the first run of the application. This could result in over-authorization for executables that were not intended.
To avoid this, ensure that the application deployment solution being used as a managed installer limits running applications as part of installation.   

## Known limitations with managed installer

- Application execution control based on managed installer does not support applications that self-update. 
If an application deployed by a managed installer subsequently updates itself, the updated application files will no longer include the managed installer origin information and will not be authorized to run. 
Enterprises should deploy and install all application updates using the managed installer. 
In some cases, it may be possible to also designate an application binary that performs the self-updates as a managed installer. 
Proper review for functionality and security should be performed for the application before using this method. 

- Although WDAC policies can be deployed in both audit and enforced mode, the managed installer option is currently only recommended for use with policies set to enforced except in lab environments. 
Using the managed installer option with WDAC policies set to audit only may result in unexpected behavior if the policy is subsequently changed to enforced mode. 

- Modern apps deployed through a managed installer will not be tracked by the managed installer heuristic and will need to be separately authorized in your WDAC policy.

- Executables that extract files and then attempt to execute may not be allowed by the managed installer heuristic. 
In some cases, it may be possible to also designate an application binary that performs such an operation as a managed installer. 
Proper review for functionality and security should be performed for the application before using this method.

- The managed installer heuristic does not authorize drivers. 
The WDAC policy must have rules that allow the necessary drivers to run.  

- In some cases, the code integrity logs where WDAC errors and warnings are written will contain error events for native images generated for .NET assemblies. 
Typically, the error is functionally benign as a blocked native image will result in the corresponding assembly being re-interpreted. 
Review for functionality and performance for the related applications using the native images maybe necessary in some cases. 
