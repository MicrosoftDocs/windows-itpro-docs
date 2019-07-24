---
title: Configure MDT deployment share rules (Windows 10)
description: In this topic, you will learn how to configure the MDT rules engine to reach out to other resources, including external scripts, databases, and web services, for additional information instead of storing settings directly in the rules engine.
ms.assetid: b5ce2360-33cc-4b14-b291-16f75797391b
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: rules, configuration, automate, deploy
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: mdt
author: greg-lindsay
ms.topic: article
---

# Configure MDT deployment share rules

In this topic, you will learn how to configure the MDT rules engine to reach out to other resources, including external scripts, databases, and web services, for additional information instead of storing settings directly in the rules engine. The rules engine in MDT is powerful: most of the settings used for operating system deployments are retrieved and assigned via the rules engine. In its simplest form, the rules engine is the CustomSettings.ini text file.

## <a href="" id="sec01"></a>Assign settings

When using MDT, you can assign setting in three distinct ways:
-   You can pre-stage the information before deployment.
-   You can prompt the user or technician for information.
-   You can have MDT generate the settings automatically.

In order illustrate these three options, let's look at some sample configurations.

## <a href="" id="sec02"></a>Sample configurations

Before adding the more advanced components like scripts, databases, and web services, consider the commonly used configurations below; they demonstrate the power of the rules engine.

### Set computer name by MAC Address

If you have a small test environment, or simply want to assign settings to a very limited number of machines, you can edit the rules to assign settings directly for a given MAC Address. If you have many machines, it makes sense to use the database instead.

```ini
[Settings]
Priority=MacAddress, Default
[Default]
OSInstall=YES
[00:15:5D:85:6B:00]
OSDComputerName=PC00075
```

In the preceding sample, you set the PC00075 computer name for a machine with a MAC Address of 00:15:5D:85:6B:00.

### Set computer name by serial number

Another way to assign a computer name is to identify the machine via its serial number.

```ini
[Settings]
Priority=SerialNumber, Default
[Default]
OSInstall=YES
[CND0370RJ7]
OSDComputerName=PC00075
```

In this sample, you set the PC00075 computer name for a machine with a serial number of CND0370RJ7.

### Generate a computer name based on a serial number

You also can configure the rules engine to use a known property, like a serial number, to generate a computer name on the fly.

```ini
[Settings]
Priority=Default
[Default]
OSInstall=YES
OSDComputerName=PC-%SerialNumber%
```

In this sample, you configure the rules to set the computer name to a prefix (PC-) and then the serial number. If the serial number of the machine is CND0370RJ7, the preceding configuration sets the computer name to PC-CND0370RJ7.
**Note**  

Be careful when using the serial number to assign computer names. A serial number can contain more than 15 characters, but the Windows setup limits a computer name to 15 characters.
 
### Generate a limited computer name based on a serial number

To avoid assigning a computer name longer than 15 characters, you can configure the rules in more detail by adding VBScript functions, as follows:

```ini
[Settings]
Priority=Default
[Default]
OSInstall=YES
OSDComputerName=PC-#Left("%SerialNumber%",12)#
```

In the preceding sample, you still configure the rules to set the computer name to a prefix (PC-) followed by the serial number. However, by adding the Left VBScript function, you configure the rule to use only the first 12 serial-number characters for the name.

### Add laptops to a different organizational unit (OU) in Active Directory

In the rules, you find built-in properties that use a Windows Management Instrumentation (WMI) query to determine whether the machine you are deploying is a laptop, desktop, or server. In this sample, we assume you want to add laptops to different OUs in Active Directory. Note that ByLaptopType is not a reserved word; rather, it is the name of the section to read.

```ini
[Settings]
Priority=ByLaptopType, Default
[Default]
MachineObjectOU=OU=Workstations,OU=Contoso,DC=contoso,DC=com
[ByLaptopType]
Subsection=Laptop-%IsLaptop%
[Laptop-True]
MachineObjectOU=OU=Laptops,OU=Contoso,DC=contoso,DC=com
```

## Related topics

[Set up MDT for BitLocker](set-up-mdt-for-bitlocker.md)

[Configure MDT for UserExit scripts](configure-mdt-for-userexit-scripts.md)

[Simulate a Windows 10 deployment in a test environment](simulate-a-windows-10-deployment-in-a-test-environment.md)

[Use the MDT database to stage Windows 10 deployment information](use-the-mdt-database-to-stage-windows-10-deployment-information.md)

[Assign applications using roles in MDT](assign-applications-using-roles-in-mdt.md)

[Use web services in MDT](use-web-services-in-mdt.md)

[Use Orchestrator runbooks with MDT](use-orchestrator-runbooks-with-mdt.md)
