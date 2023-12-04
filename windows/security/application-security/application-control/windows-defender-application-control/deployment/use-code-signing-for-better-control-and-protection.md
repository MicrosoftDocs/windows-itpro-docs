---
title: Use code signing for added control and protection with WDAC
description: Code signing can be used to better control Win32 app authorization and add protection for your Windows Defender Application Control (WDAC) policies.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 11/29/2022
---

# Use code signing for added control and protection with Windows Defender Application Control

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. For more information, see [Windows Defender Application Control feature availability](../feature-availability.md).

## What is code signing and why is it important?

Code signing provides some important benefits to application security features like Windows Defender Application Control (WDAC). First, it allows the system to cryptographically verify that a file hasn't been tampered with since it was signed and before any code is allowed to run. Second, it associates the file with a real-world identity, such as a company or an individual developer. This identity can make your policy trust decisions easier and allows for real-world consequences when code signing is abused or used maliciously. Although Windows doesn't require software developers to digitally sign their code, most major independent software vendors (ISV) do use code signing for much of their code. And metadata that a developer includes in a file's resource header (.RSRC), such as OriginalFileName or ProductName, can be combined with the file's signing certificate to limit the scope of trust decisions. For example, instead of allowing everything signed by Microsoft, you can choose to allow only files signed by Microsoft where ProductName is "Microsoft Teams". Then use other rules to authorize any other files that need to run.

Wherever possible, you should require all app binaries and scripts are code signed as part of your app acceptance criteria. And, you should ensure that internal line-of-business (LOB) app developers have access to code signing certificates controlled by your organization.

## Catalog signing

App binaries and scripts are typically either embed-signed or catalog-signed. Embedded signatures become part of the file itself and are carried with the file wherever it's copied or moved. Catalog signatures, on the other hand, are detached from the individual file(s). Instead, a separate "catalog file" is created that contains hash values for one or more files to be signed. This catalog file is then digitally signed and applied to any computer where you want the signature to exist. Any file whose hash value is included in the signed catalog inherits the signature from the catalog file. A file may have multiple signatures, including a mix of embedded and catalog signatures.

You can use catalog files to easily add a signature to an existing application without needing access to the original source files and without any expensive repackaging. You can even use catalog files to add your own signature to an ISV app when you don't want to trust everything the ISV signs directly, themselves. Then you just deploy the signed catalog along with the app to all your managed endpoints.

> [!NOTE]
> Since catalogs identify the files they sign by hash, any change to the file may invalidate its signature. You will need to deploy updated catalog signatures any time the application is updated. Integrating code signing with your app development or app deployment processes is generally the best approach. Be aware of self-updating apps, as their app binaries may change without your knowledge.

To learn how to create and manage catalog files for existing apps, see [Deploy catalog files to support Windows Defender Application Control](deploy-catalog-files-to-support-wdac.md).

## Signed WDAC policies

While a WDAC policy begins as an XML document, it's then converted into a binary-encoded file before deployment. This binary version of your policy can be code signed like any other application binary, offering many of the same benefits as described above for signed code. Additionally, signed policies are treated specially by WDAC and help protect against tampering or removal of a policy even by an admin user.

For more information on using signed policies, see [Use signed policies to protect Windows Defender Application Control against tampering](/windows/security/threat-protection/windows-defender-application-control/use-signed-policies-to-protect-windows-defender-application-control-against-tampering)

## Obtain code signing certificates for your own use

Some ways to obtain code signing certificates for your own use, include:

- Purchase a code signing certificate from one of the [Microsoft Trusted Root Program participants](/security/trusted-root/participants-list).
- To use your own digital certificate or public key infrastructure (PKI) to issue code signing certificates, see [Optional: Create a code signing certificate for Windows Defender Application Control](create-code-signing-cert-for-wdac.md).
- Use Microsoft's [Azure Code Signing (ACS) service](https://aka.ms/AzureCodeSigning).
