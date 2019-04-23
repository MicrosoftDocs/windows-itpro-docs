---
title: Supported Microsoft Defender Advanced Threat Protection response APIs  
description: Learn about the specific response related Microsoft Defender Advanced Threat Protection API calls. 
keywords: response apis, graph api, supported apis, actor, alerts, machine, user, domain, ip, file
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Supported Microsoft Defender ATP query APIs 

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-supported-response-apis-abovefoldlink) 

Learn about the supported response related API calls you can run and details such as the required request headers, and expected response from the calls.

## In this section
Topic | Description
:---|:---
Collect investigation package | Run this to collect an investigation package from a machine.
Isolate machine | Run this to isolate a machine from the network.
Unisolate machine | Remove a machine from isolation. 
Restrict code execution | Run this to contain an attack by stopping malicious processes. You can also lock down a device and prevent subsequent attempts of potentially malicious programs from running.
Unrestrict code execution | Run this to reverse the restriction of applications policy after you have verified that the compromised machine has been remediated.
Run antivirus scan | Remotely initiate an antivirus scan to help identify and remediate malware that might be present on a compromised machine.
Stop and quarantine file |  Run this call to stop running processes, quarantine  files, and delete persistency such as registry keys.
Request sample | Run this call to request a sample of a file from a specific machine. The file will be collected from the machine and uploaded to a secure storage.
Block file | Run this to prevent further propagation of an attack in your organization by banning potentially malicious files or suspected malware. 
Unblock file | Allow a file run in the organization using Windows Defender Antivirus.
Get package SAS URI | Run this to get a URI that allows downloading an investigation package.
Get MachineAction object | Run this to get MachineAction object.
Get MachineActions collection | Run this to get MachineAction collection.
Get FileActions collection | Run this to get FileActions collection.
Get FileMachineAction object | Run this to get FileMachineAction object.
Get FileMachineActions collection | Run this to get FileMachineAction collection.



