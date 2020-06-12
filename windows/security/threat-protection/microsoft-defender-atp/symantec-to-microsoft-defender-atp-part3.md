---
title: Part 3 - Finish making the switch to Microsoft Defender ATP
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

# Migrate from Symantec - Part 3: Finish making the switch to Microsoft Defender ATP

**Welcome to Part 3 of [migrating from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)**. This migration phase includes the following steps:
- [Set up your device groups, device collections, and organizational units](#set-up-your-device-groups-device-collections-and-organizational-units) 
- [Deploy Microsoft Defender ATP and uninstall Symantec](#deploy-microsoft-defender-atp-and-uninstall-symantec)
- [Onboard devices to Microsoft Defender ATP](#onboard-devices-to-microsoft-defender-atp)

## Set up your device groups, device collections, and organizational units

stuff (will draw from existing content here)

Set up Machine Groups or Device Collections or OU such as company department, administrative responsibility, or physical location or subnet.


## Deploy Microsoft Defender ATP and uninstall Symantec

stuff (will draw from existing content here)

[Uninstall Symantec Endpoint Protection](https://knowledge.broadcom.com/external/article/156148/uninstall-symantec-endpoint-protection.html)

## Onboard devices to Microsoft Defender ATP

You can choose from several methods to onboard devices to Microsoft Defender ATP. 

stuff (will draw from existing content here)

For Windows 10, Windows Server 2016, and Windows Server 2019:
1.	Deploy MDATP (EDR) can run side-by-side with any 3rd party EDR and/or AV and/or other security products.
2.	SCCM Antimalware policies can be deployed ahead of time to the “Device Collections”.
3.	SCCM ADR for MDAV “Platform update” and SCEP “Platform update” can be deployed ahead of time to the “Device Collections”.
4.	MDAV (for Windows 10, Windows Server 2016, and Windows Server 2019) can run in passive-mode (no real-time protection) while the SEP AV is installed.
Note:  Set “Passive Mode” registry for Windows Server 2016 and Windows Server 2019.
5.	Uninstall 3rd party EDR (RSA NetWitness)
6.	Uninstall 3rd party SEP AV
1)	Unblock password (Anti-tamper, in order to remove)
2)	Refresh SEP policy 
<Add the command here.>
3)	Uninstall the Endpoint Protection client using the command prompt
https://support.symantec.com/us/en/article.tech102470.html

There is an example for both PowerShell and DOS.  This script could be automated to check for a ReturnValue to equal zero and if not then run “CleanWipe”

4)	Download the CleanWipe removal tool to uninstall Endpoint Protection
https://support.symantec.com/us/en/article.howto124983.html
Note:  SEP 14 now forces end-user interaction.

Article has the download and readme.
 
 
 
Select all apps in the tool and once completed it will require a reboot and once you log back in the software will continue and show completion.  You will need to periodically check this article as they update the software versions often.  You can also verify when running if it requires an update.
7.	Change Passive Mode registry to disabled for Windows Server 2016 and Windows Server 2019.
8.	Restart

What does this accomplish?
You stay protected with MDATP (EDR) while your 3rd party EDR is uninstalled.
Also protects you since after SEP is uninstalled, MDAV AV goes from “Passive Mode” to “Active Mode”. 

For Windows 7 SP1, Windows Server 2008 R2 SP1, Windows 8.1, and Windows Server 2012 R2:
	WARNING:  Unlike MDAV, SCEP cannot run in passive-mode while any 3rd party AV (e.g. SEP AV) is installed.

1.	Deploy MDATP (EDR) can run side-by-side with any 3rd party EDR and/or AV and/or other security products.
2.	Uninstall 3rd party EDR
3.	Uninstall 3rd party SEP AV
1)	Unblock password (Anti-tamper, in order to remove)
2)	Refresh SEP policy 
%ProgramFiles(x86)\Symantec\Symantec Endpoint Protection\Smc.exe” -UpdateConfig

3)	Uninstall the Endpoint Protection client using the command prompt
https://support.symantec.com/us/en/article.tech102470.html
TIP:  Watch out for the different versions of SEP, instead of using the uninstall GUID, use the Powershell/WMI command in the article above.

There is an example for both PowerShell and DOS.  This script could be automated to check for a ReturnValue to equal zero and if not then run “CleanWipe”

4)	Download the CleanWipe removal tool to uninstall Endpoint Protection
https://support.symantec.com/us/en/article.howto124983.html

Article has the download and readme.
 
 
 
Select all apps in the tool and once completed it will require a reboot and once you log back in the software will continue and show completion.  You will need to periodically check this article as they update the software versions often.  You can also verify when running if it requires an update.
4.	Install SCEP (for Windows 7 SP1, Windows Server 2008 R2 SP1, Windows 8.1, and Windows Server 2012 R2)
Add instructions on how to setup “Client Settings” in SCCM.
About uninstall of SEP
And install of SCEP.
5.	Restart

What does this accomplish?
You stay protected with MDATP (EDR) while your 3rd party AV and/or EDR are uninstalled.



<br/><br/><br/><br/><br/>


**Congratulations**! You have completed your [migration from Symantec to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-migration.md#planning-for-migration-the-process-at-a-high-level)!

## Next step

After you have Microsoft Defender ATP set up and deployed, your security operations team can manage the various features and capabilities. See [Manage Microsoft Defender ATP, post migration](microsoft-defender-atp-post-migration-management.md).

