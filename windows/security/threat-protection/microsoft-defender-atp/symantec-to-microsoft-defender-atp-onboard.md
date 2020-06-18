---
title: Phase 3 - Onboard to Microsoft Defender ATP
description: Make the switch from Symantec to Microsoft Defender ATP
keywords: migration, windows defender advanced threat protection, atp, edr
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Migrate from Symantec - Phase 3: Onboard to Microsoft Defender ATP


|[![Phase 1: Prepare](images/prepare.png)](symantec-to-microsoft-defender-atp-prepare.md)<br/>[Phase 1: Prepare](symantec-to-microsoft-defender-atp-prepare.md) |[![Phase 2: Set up](images/setup.png)](symantec-to-microsoft-defender-atp-setup.md)<br/>[Phase 2: Set up](symantec-to-microsoft-defender-atp-setup.md) |![Phase 3: Onboard](images/onboard.png)<br/>Phase 3: Onboard |
|--|--|--|
|| |*You are here!* |


**Welcome to Phase 3 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#the-migration-process)**. This migration phase includes the following steps:
[Deploy policies and updates to your device collections](#deploy-policies-and-updates-to-your-device-collections)
- [Onboard devices to Microsoft Defender ATP](#onboard-devices-to-microsoft-defender-atp)
- [Uninstall Symantec](#uninstall-symantec)


## Deploy policies and updates to your device collections

*WORK IN PROGRESS*

SCCM Antimalware policies can be deployed ahead of time to the “Device Collections”.

SCCM ADR for MDAV “Platform update” and SCEP “Platform update” can be deployed ahead of time to the “Device Collections”.


## Onboard devices to Microsoft Defender ATP

*WORK IN PROGRESS*

You can choose from several methods to onboard devices to Microsoft Defender ATP. 

stuff (will draw from existing content here)

## Uninstall Symantec

*WORK IN PROGRESS*

Uninstall 3rd party EDR (RSA NetWitness)

Uninstall 3rd party SEP AV
1)	Unblock password (Anti-tamper, in order to remove)
2)	Refresh SEP policy 
<Add the command here.>
3)	Uninstall the Endpoint Protection client using the command prompt
https://support.symantec.com/us/en/article.tech102470.html

There is an example for both PowerShell and DOS.  This script could be automated to check for a ReturnValue to equal zero and if not then run “CleanWipe”

Download the CleanWipe removal tool to uninstall Endpoint Protection
https://support.symantec.com/us/en/article.howto124983.html
Note:  SEP 14 now forces end-user interaction.

Article has the download and readme.
 
Select all apps in the tool and once completed it will require a reboot and once you log back in the software will continue and show completion.  You will need to periodically check this article as they update the software versions often.  You can also verify when running if it requires an update.

[Uninstall Symantec Endpoint Protection](https://knowledge.broadcom.com/external/article/156148/uninstall-symantec-endpoint-protection.html)


## Next step

**Congratulations**! You have completed your [migration from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)!

After you have Microsoft Defender ATP set up and deployed, your security operations team can manage the various features and capabilities. See [Manage Microsoft Defender ATP, post migration](microsoft-defender-atp-post-migration-management.md).

