---
title: Use code signing to simplify application control for classic Windows applications (Windows)
description: With embedded signing, your WDAC policies typically don't have to be updated when an app is updated. To set up this embedded signing, you can choose from various methods.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: vinpa
manager: aaroncz
ms.date: 05/03/2018
ms.technology: itpro-security
---

# Use code signing to simplify application control for classic Windows applications

**Applies to:**

- Windows 10
- Windows 11
- Windows Server 2016 and above

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](feature-availability.md).

This topic covers guidelines for using code signing control classic Windows apps.

## Reviewing your applications: application signing and catalog files

Typically, Windows Defender Application Control (WDAC) policies are configured to use the application's signing certificate as part or all of what identifies the application as trusted. This purpose means that applications must either use embedded signing—where the signature is part of the binary—or catalog signing, where you generate a "catalog file" from the applications, sign it, and through the signed catalog file, configure the WDAC policy to recognize the applications as signed.

Catalog files can be useful for unsigned LOB applications that can't easily be given an embedded signature. However, catalogs need to be updated each time an application is updated. In contrast, with embedded signing, your Windows Defender Application Control policies typically don't have to be updated when an application is updated. For this reason, if code-signing is or can be included in your in-house application development process, it can simplify the management of WDAC (compared to using catalog signing).

To obtain signed applications or embed signatures in your in-house applications, you can choose from various methods:

- Using the Microsoft Store publishing process. All apps that come out of the Microsoft Store are automatically signed with special signatures that can roll up to our certificate authority (CA) or to your own.

- Using your own digital certificate or public key infrastructure (PKI). ISV's and enterprises can sign their own Classic Windows applications themselves, adding themselves to the trusted list of signers.

- Using a non-Microsoft signing authority. ISV's and enterprises can use a trusted non-Microsoft signing authority to sign all of their own Classic Windows applications.

To use catalog signing, you can choose from the following options:

- Use the Windows Defender signing portal available in the Microsoft Store for Business and Education. The portal is a Microsoft web service that you can use to sign your Classic Windows applications. 

- Create your own catalog files, which are described in the next section. 

### Catalog files

Catalog files (which you can create in Windows 10 and Windows 11 with a tool called Package Inspector) contain information about all deployed and executed binary files associated with your trusted but unsigned applications. When you create catalog files, you can also include signed applications for which you don't want to trust the signer but rather the specific application. After creating a catalog, you must sign the catalog file itself by using enterprise public key infrastructure (PKI), or a purchased code signing certificate. Then you can distribute the catalog, so that your trusted applications can be handled by Windows Defender Application Control in the same way as any other signed application.

Catalog files are Secure Hash Algorithm 2 (SHA2) hash lists of discovered binaries. These binaries' hash values are updated each time an application is updated, which requires the catalog file to be updated also.

After you've created and signed your catalog files, you can configure your WDAC policies to trust the signer or signing certificate of those files.

> [!NOTE]
> Package Inspector only works on operating systems that support Windows Defender, such as Windows 10 and Windows 11 Enterprise, Windows 10 and Windows 11 Education, Windows 2016 Server, or Windows Enterprise IoT.

For procedures for working with catalog files, see [Deploy catalog files to support Windows Defender Application Control](deploy-catalog-files-to-support-windows-defender-application-control.md).

## Windows Defender Application Control policy formats and signing

When you generate a Windows Defender Application Control policy, you're generating a binary-encoded XML document that includes configuration settings for both the User and Kernel-modes of Windows 10 and Windows 11 Enterprise, along with restrictions on Windows 10 and Windows 11 script hosts. You can view your original XML document in a text editor, for example if you want to check the rule options that are present in the **&lt;Rules&gt;** section of the file.

We recommend that you keep the original XML file for use when you need to merge the WDAC policy with another policy or update its rule options. For deployment purposes, the file is converted to a binary format, which can be done using a simple Windows PowerShell command.

When the Windows Defender Application Control policy is deployed, it restricts the software that can run on a device. The XML document can be signed, helping to add more protection against administrative users changing or removing the policy. 
