---
ms.localizationpriority: medium
ms.mktglfcycl: plan
description: Learn about the security features available in Internet Explorer 11 and IEAK 11.
author: lomayor
ms.prod: ie11
ms.assetid: 5b64c9cb-f8da-411a-88e4-fa69dea473e2
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Security features and IEAK 11 (Internet Explorer Administration Kit 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Security features and IEAK 11
Use Internet Explorer in conjunction with your new and existing security measures, to make sure the computers in your company aren’t compromised while on the Internet.

## Enhanced Protection Mode
Extends Protected Mode to further restrict the ability of an attacker to access sensitive or personal information in personal and corporate environments, including:

-   Restricting access to higher-level processes in the AppContainer.

-   Improving security against memory safety exploits in 64-bit tab processes.

This feature is turned off by default. For more info, see [Enhanced Protected Mode problems with Internet Explorer](../ie11-deploy-guide/enhanced-protected-mode-problems-with-ie11.md).

## Certificates and Digital Signatures
Web browsers have security features that help protect users from downloading harmful programs. Depending on the security level and the platform that you are using, the user may be prevented from, or warned against, downloading programs that are not digitally signed. Digital signatures show users where programs come from, verify that the programs have not been altered, and ensure that users do not receive unnecessary warnings when installing the custom browser.

Because of this, the custom .cab files created by the Internet Explorer Customization Wizard should be signed, unless you pre-configure the Local intranet zone with a Low security setting. Any custom components you distribute with your browser package for these platforms should also be signed.

### Understanding digital certificates
To sign your package and custom programs digitally, you must first obtain a digital certificate. You can obtain a certificate from a certification authority or a privately-controlled certificate server. For more info about obtaining certificates or setting up a certificate server, see the following:

-   Microsoft-trusted certification authorities ([Windows root certificate program requirements](https://go.microsoft.com/fwlink/p/?LinkId=759697)).

-   Certificates overview documentation ([Certificates](https://go.microsoft.com/fwlink/p/?LinkId=759698)).

-   Microsoft Active Directory Certificate Services ( [Active Directory Certificate Services](https://go.microsoft.com/fwlink/p/?LinkId=259521)).

-   Enterprise public key infrastructure (PKI) snap-in documentation ([Enterprise PKI](https://go.microsoft.com/fwlink/p/?LinkId=259526)).

After you get a certificate, you should note the public and private keys, which are a matched set of keys that are created by the software publisher for encryption and decryption. They are generated on your device at the time the certificate is requested, and your private key is never sent to the certification authority or any other party.

### Understanding code signing
Code signing varies, depening on how you plan to distribute your custom install package.

-   **If you plan to distribute custom packages over the Internet**, you must sign all custom components and the CMAK profile package (if used). Before you start the Internet Explorer Customization Wizard, make sure that both are signed. Typically, their respective manufacturers will have signed them. Otherwise, you can sign these using the Sign Tool (SignTool.exe) ( [SignTool.exe (Sign Tool)](https://go.microsoft.com/fwlink/p/?LinkId=71298)) or use the File Signing Tool (Signcode.exe) ([Signcode.exe (File Signing Tool)](https://go.microsoft.com/fwlink/p/?LinkId=71299)). You should read the documentation included with these tools for more info about all of the signing options.<p>
In addition, after you run the Internet Explorer Customization Wizard, we highly recommend that you sign the IEAK package and the branding.cab file (if you are using it separately from the package). You can do this also using the tools mentioned above. For more information, download Code-Signing Best Practices ([Code-Signing Best Practices](https://go.microsoft.com/fwlink/p/?LinkId=71300)).

-   **If you plan to distribute your custom packages over an intranet**, sign the custom files or preconfigure the Local intranet zone with a Low security setting, because the default security setting does not allow users to download unsigned programs or code.

### Understanding your private key
Your device creates two keys during the enrollment process of your digital certificate. One is a public key, which is sent to anyone you want to communicate with, and one is a private key, which is stored on your local device and must be kept secret. You use the private key to encrypt your data and the corresponding public key to decrypt it.

You must keep your private key, private. To do this, we recommend:

-   **Separate test and release signing.** Set up a parallel code signing infrastructure, using test certificates created by an internal test root certificate authority. This helps to ensure that your certificates aren’t stored on an insecure build system, reducing the likelihood that they will be compromised.

-   **Tamper-proof storage.** Save your private keys on secure, tamper-proof hardware devices.

-   **Security.** Protect your private keys using physical security measures, such as cameras and card readers.

