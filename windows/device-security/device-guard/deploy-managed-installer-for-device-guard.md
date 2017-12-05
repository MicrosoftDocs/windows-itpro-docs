---
title: Deploy Managed Installer for Windows Defender Device Guard (Windows 10)
description: Explains how you can use a managed installer to automatically authorize applications deployed and installed by a designated software distribution solution, such as System Center Configuration Manager. 
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
author: mdsakibMSFT
ms.date: 10/20/2017
---

# Deploy Managed Installer for Windows Defender Device Guard

Creating and maintaining application execution control policies has always been challenging, and finding ways to address this issue has been a frequently-cited request for customers of AppLocker and Windows Defender Device Guard [configurable code integrity (CI)](device-guard-deployment-guide.md). 
This is especially true for enterprises with large, ever changing software catalogs. 

Windows 10, version 1703 (also known as the Windows 10 Creators Update) provides a new option, known as a managed installer, that allows IT administrators to automatically authorize applications deployed and installed by a designated software distribution solution, such as System Center Configuration Manager. 
A managed installer helps an IT admin balance security and manageability requirements when employing application execution control policies by providing an option that does not require specifying explicit rules for software that is being managed through a software distribution solution.

## How does a managed installer work?

A managed installer uses a new rule collection in AppLocker to specify one or more executables that are trusted by the organization as an authorized source for application deployment. 
Specifying an executable as a managed installer will cause Windows to tag files that are written from the executable’s process (or processes it launches) as having originated from a trusted installation authority.  

Once the IT administrator adds the Allow: Managed Installer option to a configurable CI policy for Windows Defender Device Guard, the configurable CI component will subsequently check for the presence of the origin information when evaluating other application execution control rules specified in the policy. 
If there are no deny rules present for the file, it will be authorized based on the managed installer origin information.

> [!NOTE] 
> Admins needs to ensure that there is a CI policy in place to allow the system to boot and run any other authorized applications that may not be deployed through a managed installer. 
>
> Examples of CI policies available in C:\Windows\schemas\CodeIntegrity\ExamplePolicies help authorize Windows OS components, WHQL signed drivers and all Store apps. 
> Admins can reference and customize them as needed for their Windows Defender Device Guard deployment.

## Configuring a managed installer with AppLocker and configurable code integrity policy

Setting up managed installer tracking and application execution enforcement requires applying both an AppLocker and configurable CI policy with specific rules and options enabled. 
There are three primary steps to keep in mind:

- Specify managed installers using the Managed Installer rule collection in AppLocker policy
- Enable service enforcement in AppLocker policy
- Enable the managed installer option in a configurable CI policy

### Specify managed installers using the Managed Installer rule collection in AppLocker policy

The identity of the managed installer executable(s) is specified in an AppLocker policy in a Managed Installer rule collection. 
Currently the AppLocker policy creation UI and cmdlets do not allow for directly specifying rules for the Managed Installer rule collection, however a text editor can be used to make the simple changes needed to an EXE or DLL rule collection policy to specify Type="ManagedInstaller". 

An example of a valid Managed Installer rule collection is shown below. 

```code
<RuleCollection Type="ManagedInstaller" EnforcementMode="AuditOnly">
    <FilePublisherRule Id="6cc9a840-b0fd-4f86-aca7-8424a22b4b93" Name="CMM - CCMEXEC.EXE, 5.0.0.0+, Microsoft signed" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="SYSTEM CENTER CONFIGURATION MANAGER" BinaryName="CCMEXEC.EXE">
          <BinaryVersionRange LowSection="5.0.0.0" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>
    </FilePublisherRule>
    <FilePublisherRule Id="780ae2d3-5047-4240-8a57-767c251cbb12" Name="CCM - CCMSETUP.EXE, 5.0.0.0+, Microsoft signed" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="SYSTEM CENTER CONFIGURATION MANAGER" BinaryName="CCMSETUP.EXE">
          <BinaryVersionRange LowSection="5.0.0.0" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>
    </FilePublisherRule>
  </RuleCollection>
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

### Enable the managed installer option in CI policy

In order to enable trust for the binaries laid down by managed installers, the Allow: Managed Installer option must be specified in your configurable CI policy. .
This can be done by using the [Set-RuleOption cmdlet](https://technet.microsoft.com/itpro/powershell/windows/configci/set-ruleoption). 
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

Users with administrator privileges on the system may be able to circumvent the intent of Windows Defender Device Guard configurable CI when the managed installer option is allowed. 
If the authorized managed installer process performs installations in the context of a user with standard privileges, then it is possible that standard users may be able to circumvent the intent of Windows Defender Device Guard configurable CI policy. 
In some cases, the heuristic tracking and authorizing applications may be active on the first execution of an application that is laid down from a designated managed installer. 
Typically, this would occur if the managed installer executes the application directly as part of the installation process. 
To avoid this, ensure that the application deployment solution being used as a managed installer limits running applications as part of installation.   

## Known limitations with managed installer

- Application execution control based on managed installer does not support applications that self-update. 
If an application deployed by a managed installer subsequently updates itself, the updated application files will no longer include the managed installer origin EA information and will not be authorized to run. 
Enterprises should deploy and install all application updates using the managed installer. 
In some cases, it may be possible to also designate an application binary that performs the self-updates as a managed installer. 
Proper review for functionality and security should be performed for the application before using this method. 

- Although configurable CI policies can be deployed in both audit and enforced mode, the managed installer option is currently only recommended for use with policies set to enforced except in lab environments. 
Using the managed installer option with configurable CI policies set to audit only may result in unexpected behavior if the policy is subsequently changed to enforced mode. 

- Modern apps deployed through a managed installer will not be tracked by the heuristic and will need to be appropriately authorized in policy.

- Executables that extract files and then attempt to execute may fail the heuristic. 
In some cases, it may be possible to also designate an application binary that performs such an operation as a managed installer. 
Proper review for functionality and security should be performed for the application before using this method.

- The managed installer heuristic does not authorize drivers. 
The configurable code integrity policy being used must have rules that allow the necessary drivers to run.  

- In some cases, the code integrity logs will contain error events for native images generated for .NET assemblies. 
Typically, the error is functionally benign as a blocked native image will result in the corresponding assembly being re-interpreted. 
Review for functionality and performance for the related applications using the native images maybe necessary in some cases. 