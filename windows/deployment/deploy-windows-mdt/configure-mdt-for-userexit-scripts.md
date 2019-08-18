---
title: Configure MDT for UserExit scripts (Windows 10)
description: In this topic, you will learn how to configure the MDT rules engine to use a UserExit script to generate computer names based on a prefix and the computer MAC Address.
ms.assetid: 29a421d1-12d2-414e-86dc-25b62f5238a7
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: rules, script
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: mdt
audience: itpro
author: greg-lindsay
ms.topic: article
---

# Configure MDT for UserExit scripts

In this topic, you will learn how to configure the MDT rules engine to use a UserExit script to generate computer names based on a prefix and the computer MAC Address. MDT supports calling external VBScripts as part of the Gather process; these scripts are referred to as UserExit scripts. The script also removes the colons in the MAC Address.

## Configure the rules to call a UserExit script

You can call a UserExit by referencing the script in your rules. Then you can configure a property to be set to the result of a function of the VBScript. In this example, we have a VBScript named Setname.vbs (provided in the book sample files, in the UserExit folder).

``` 
[Settings]
Priority=Default
[Default]
OSINSTALL=YES
UserExit=Setname.vbs
OSDComputerName=#SetName("%MACADDRESS%")#
```

The UserExit=Setname.vbs calls the script and then assigns the computer name to what the SetName function in the script returns. In this sample the %MACADDRESS% variable is passed to the script

## The Setname.vbs UserExit script

The Setname.vbs script takes the MAC Address passed from the rules. The script then does some string manipulation to add a prefix (PC) and remove the semicolons from the MAC Address.

``` 
Function UserExit(sType, sWhen, sDetail, bSkip) 
  UserExit = Success 
End Function 
Function SetName(sMac)
  Dim re
  Set re = new RegExp
  re.IgnoreCase = true
  re.Global = true
  re.Pattern = ":"
  SetName = "PC" & re.Replace(sMac, "")
End Function
```
The first three lines of the script make up a header that all UserExit scripts have. The interesting part is the lines between Function and End Function. Those lines add a prefix (PC), remove the colons from the MAC Address, and return the value to the rules by setting the SetName value.

**Note**  
The purpose of this sample is not to recommend that you use the MAC Address as a base for computer naming, but to show you how to take a variable from MDT, pass it to an external script, make some changes to it, and then return the new value to the deployment process.
 
## Related topics

[Set up MDT for BitLocker](set-up-mdt-for-bitlocker.md)

[Configure MDT deployment share rules](configure-mdt-deployment-share-rules.md)

[Simulate a Windows 10 deployment in a test environment](simulate-a-windows-10-deployment-in-a-test-environment.md)

[Use the MDT database to stage Windows 10 deployment information](use-the-mdt-database-to-stage-windows-10-deployment-information.md)

[Assign applications using roles in MDT](assign-applications-using-roles-in-mdt.md)

[Use web services in MDT](use-web-services-in-mdt.md)

[Use Orchestrator runbooks with MDT](use-orchestrator-runbooks-with-mdt.md)
