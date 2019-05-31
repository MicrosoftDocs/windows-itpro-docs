---
title: Use code signing to simplify application control for classic Windows applications (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 05/03/2018
---

# Use code signing to simplify application control for classic Windows applications

**Applies to:**

-   Windows 10
-   Windows Server 2016

This topic covers guidelines for using code signing control classic Windows apps.

## Reviewing your applications: application signing and catalog files 

Typically, WDAC policies are configured to use the application's signing certificate as part or all of what identifies the application as trusted. This means that applications must either use embedded signing—where the signature is part of the binary—or catalog signing, where you generate a “catalog file” from the applications, sign it, and through the signed catalog file, configure the WDAC policy to recognize the applications as signed.

Catalog files can be very useful for unsigned LOB applications that cannot easily be given an embedded signature. However, catalogs need to be updated each time an application is updated. In contrast, with embedded signing, your WDAC policies typically do not have to be updated when an application is updated. For this reason, if code-signing is or can be included in your in-house application development process, it can simplify the management of WDAC (compared to using catalog signing).

To obtain signed applications or embed signatures in your in-house applications, you can choose from a variety of methods:

- Using the Microsoft Store publishing process. All apps that come out of the Microsoft Store are automatically signed with special signatures that can roll-up to our certificate authority (CA) or to your own.

- Using your own digital certificate or public key infrastructure (PKI). ISV's and enterprises can sign their own Classic Windows applications themselves, adding themselves to the trusted list of signers.

- Using a non-Microsoft signing authority. ISV's and enterprises can use a trusted non-Microsoft signing authority to sign all of their own Classic Windows applications.

To use catalog signing, you can choose from the following options:

- Use the Windows Defender Device Guard signing portal available in the Microsoft Store for Business and Education. The portal is a Microsoft web service that you can use to sign your Classic Windows applications. For more information, see [Device Guard signing](https://technet.microsoft.com/itpro/windows/manage/device-guard-signing-portal).

- Create your own catalog files, which are described in the next section. 

### Catalog files

Catalog files (which you can create in Windows 10 with a tool called Package Inspector) contain information about all deployed and executed binary files associated with your trusted but unsigned applications. When you create catalog files, you can also include signed applications for which you do not want to trust the signer but rather the specific application. After creating a catalog, you must sign the catalog file itself by using enterprise public key infrastructure (PKI), or a purchased code signing certificate. Then you can distribute the catalog, so that your trusted applications can be handled by WDAC in the same way as any other signed application.

Catalog files are simply Secure Hash Algorithm 2 (SHA2) hash lists of discovered binaries. These binaries’ hash values are updated each time an application is updated, which requires the catalog file to be updated also.

After you have created and signed your catalog files, you can configure your WDAC policies to trust the signer or signing certificate of those files.

> [!NOTE]
> Package Inspector only works on operating systems that support Windows Defender Device Guard, such as Windows 10 Enterprise, Windows 10 Education, Windows 2016 Server, or Windows Enterprise IoT.

For procedures for working with catalog files, see [Deploy catalog files to support Windows Defender Application Control](deploy-catalog-files-to-support-windows-defender-application-control.md).

## Windows Defender Application Control policy formats and signing

When you generate a WDAC policy, you are generating a binary-encoded XML document that includes configuration settings for both the User and Kernel-modes of Windows 10 Enterprise, along with restrictions on Windows 10 script hosts. You can view your original XML document in a text editor, for example if you want to check the rule options that are present in the **&lt;Rules&gt;** section of the file.

We recommend that you keep the original XML file for use when you need to merge the WDAC policy with another policy or update its rule options. For deployment purposes, the file is converted to a binary format, which can be done using a simple Windows PowerShell command.

When the WDAC policy is deployed, it restricts the software that can run on a device. The XML document can be signed, helping to add additional protection against administrative users changing or removing the policy. 
