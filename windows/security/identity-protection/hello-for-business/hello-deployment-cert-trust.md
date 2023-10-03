---
title: Windows Hello for Business deployment guide for the on-premises certificate trust model
description: Learn how to deploy Windows Hello for Business in an on-premises, certificate trust model.
ms.date: 09/07/2023
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2022</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2019</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/windows-server-release-info target=_blank>Windows Server 2016</a>
ms.topic: tutorial
---
# Deployment guide overview - on-premises certificate trust

[!INCLUDE [hello-on-premises-cert-trust](./includes/hello-on-premises-cert-trust.md)]

Windows Hello for Business replaces username and password authentication to Windows with an asymmetric key pair. This deployment guide provides the information to deploy Windows Hello for Business in an on-premises environment:

1. [Validate Active Directory prerequisites](hello-cert-trust-validate-ad-prereq.md)
2. [Validate and configure a PKI](hello-cert-trust-validate-pki.md)
3. [Prepare and deploy AD FS](hello-cert-trust-adfs.md)
4. [Validate and deploy multi-factor authentication (MFA)](hello-cert-trust-validate-deploy-mfa.md)
5. [Configure Windows Hello for Business Policy settings](hello-cert-trust-policy-settings.md)