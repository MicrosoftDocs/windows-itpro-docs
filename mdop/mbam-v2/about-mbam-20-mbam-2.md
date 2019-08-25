---
title: About MBAM 2.0
description: About MBAM 2.0
author: msfttracyp
ms.assetid: b43a0ba9-1c83-4854-a2c5-14eea0070e36
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# About MBAM 2.0


Microsoft BitLocker Administration and Monitoring (MBAM) 2.0 provides a simplified administrative interface to BitLocker drive encryption. BitLocker offers enhanced protection against data theft or data exposure for computers that are lost or stolen. BitLocker encrypts all data that is stored on the Windows operating system volume and configured data volumes.

## About MBAM 2.0


BitLocker Administration and Monitoring 2.0 enforces the BitLocker encryption policy options that you set for your enterprise, monitors the compliance of client computers with those policies, and reports on the encryption status of both the enterprise and the individual computers. In addition, MBAM lets you access the recovery key information when users forget their PIN or password, or when their BIOS or boot record changes.

**Note**  
BitLocker is not covered in detail in this guide. For an overview of BitLocker, see [BitLocker Drive Encryption Overview](https://go.microsoft.com/fwlink/p/?LinkId=225013).

 

The following groups might be interested in using MBAM to manage BitLocker:

-   Administrators, IT security professionals, and compliance officers who are responsible for ensuring that confidential data is not disclosed without authorization

-   Administrators who are responsible for computer security in remote or branch offices

-   Administrators who are responsible for client computers that are running Windows

## <a href="" id="what-s-new-in-mbam-2-0"></a>What’s New in MBAM 2.0


MBAM 2.0 provides the following new features and functionality.

### Integration of System Center Configuration Manager with MBAM

MBAM now supports integration with System Center Configuration Manager. This integration moves the MBAM compliance infrastructure into the native environment of Configuration Manager. IT administrators who use Configuration Manager in their enterprise can now view the compliance status of their enterprise in the Microsoft Management Console and drill into reports to view individual computers.

### Hardware Compatibility is Available Only in the Configuration Manager Integration Topology

Integrating Configuration Manager with MBAM enables Configuration Manager capabilities that allow or prohibit the use of certain hardware types with MBAM and provides more flexibility than the hardware compatibility that was available in MBAM 1.0. IT administrators can create their own collections to limit hardware and can deploy the MBAM configuration baseline to those collections. The MBAM hardware compatibility that was present in MBAM 1.0 is now available only in the MBAM Configuration Manager topology and is administered from Configuration Manager.

### Protectors Flexible Policy

Computers that are already encrypted with a protector (for example, TPM + PIN or Auto-Unlock and password) and that receive an MBAM policy that requires a subset of that encryption (for example, TPM or Auto-Unlock) are considered compliant. In the example above, PIN and password would not be removed automatically unless the IT administrator specifically defines these features as no longer allowed.

Computers that are not encrypted and that receive an MBAM policy (for example, TPM or Auto-Unlock) are encrypted accordingly. Users who are local administrators are allowed to use the BitLocker tools (Control Panel item BitLocker Drive Encryption or Manage-bde) to add or modify the existing protectors (for example, TPM + PIN or Auto-Unlock and password). They remain compliant unless MBAM policies specifically define them.

### Ability to Upgrade the MBAM Client

The MBAM 2.0 Client Windows Installer detects the version of the existing client and performs the required steps to upgrade to the MBAM 2.0 Client from previous versions.

### Ability to Upgrade the MBAM Server from Previous Versions

You can upgrade the MBAM 2.0 Server infrastructure from previous versions of MBAM as follows:

**Manual in-place server replacement** – You must manually uninstall the existing MBAM server infrastructure, and then install the MBAM 2.0 Server infrastructure. You do not have to remove the databases to do the upgrade. Instead, you select the existing databases, which the previous version of the MBAM Client created. The MBAM 2.0 upgrade installation then migrates the existing databases to MBAM 2.0.

**Distributed client upgrade** – If you are using the Stand-alone MBAM topology, you can upgrade the MBAM Clients gradually after you install the MBAM 2.0 Server infrastructure. The MBAM 2.0 Server detects the version of the existing Client and performs the required steps to upgrade to the 2.0 Client.

After you upgrade the MBAM 2.0 Server infrastructure, MBAM 1.0 Clients continue to report to the MBAM 2.0 Server successfully, escrowing recovery data, but compliance will be based on the policies in MBAM 1.0. You must upgrade clients to MBAM 2.0 to have client computers accurately report compliance against the MBAM 2.0 policies. You can upgrade the clients to the MBAM 2.0 Client without uninstalling the previous client, and the client will start to apply and report MBAM 2.0 policies.

If you are using MBAM with Configuration Manager, you must upgrade the MBAM 1.0 clients to MBAM 2.0.

### <a href="" id="mbam-support-for-bitlocker-s-enterprise-scenarios-on-the-windows-8-platform"></a>MBAM Support for BitLocker’s Enterprise Scenarios on the Windows 8 Platform

MBAM supports the Windows 8 operating system as a target platform for the MBAM Client installation. This support enables IT administrators to install the MBAM agent, to encrypt Windows 8 operating system drives, and to report on the compliance of the computers. MBAM leverages the TPM and TPM+PIN protectors to manage the Windows 8 operating system just as it does the Windows 7 operating system. MBAM 2.0 also adds support for encrypting Windows To Go clients.

### Addition of the Self-Service Portal

End users can now use the Self-Service Portal to recover their recovery keys. The Self-Service Portal can be deployed on a single server with the other MBAM features, or on a separate server that gives IT administrators the flexibility to expose the Self-Server Portal to users, as required. After the Self-Service Portal authenticates users, users have to enter only the first eight digits of the recovery key ID to receive their recovery key.

MBAM also secures the key by allowing users to recover keys only for those computers on which they are users, which reduces the risk that other users gain unauthorized access.

### Ability to Automatically Resume BitLocker Protection from a Suspended State

MBAM no longer allows IT administrators to keep BitLocker suspended and unprotected for prolonged periods of time. If an IT administrator suspends BitLocker, MBAM re-enables it automatically when the computer is rebooted, which reduces the risk that the computer can be attacked.

### Fixed Data Drives Can Be Configured to Automatically Unlock Without a Password

A Fixed Data Drive (FDD) policy can now be configured to allow automatic unlocking of the drive without a password. Users are not prompted for a password before the FDD is encrypted, and the FDD will be secured and auto-unlocked with the operating system drive.

## <a href="" id="---------mbam-2-0-release-notes"></a> MBAM 2.0 Release Notes


For more information, and for late-breaking news that is not included in the documentation, see the [Release Notes for MBAM 2.0](release-notes-for-mbam-20-mbam-2.md).

## How to Get MBAM 2.0


This technology is a part of the Microsoft Desktop Optimization Pack (MDOP). Enterprise customers can get MDOP with Microsoft Software Assurance. For more information about Microsoft Software Assurance and acquiring MDOP, see [How Do I Get MDOP?](https://go.microsoft.com/fwlink/p/?LinkId=322049)

## Related topics


[Getting Started with MBAM 2.0](getting-started-with-mbam-20-mbam-2.md)

 

 





