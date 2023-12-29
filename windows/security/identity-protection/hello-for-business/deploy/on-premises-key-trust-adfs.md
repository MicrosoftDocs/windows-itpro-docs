---
title: Configure Active Directory Federation Services in an on-premises key trust model
description: Learn how to configure Active Directory Federation Services (AD FS) to support the Windows Hello for Business key trust model.
ms.date: 12/15/2023
ms.topic: tutorial
---

# Prepare and deploy Active Directory Federation Services - on-premises key trust

[!INCLUDE [apply-to-on-premises-key-trust](includes/apply-to-on-premises-key-trust.md)]

Windows Hello for Business works exclusively with the Active Directory Federation Service (AD FS) role included with Windows Server. The on-premises key trust deployment model uses AD FS for *key registration* and *device registration*.

[!INCLUDE [adfs-validate](includes/adfs-validate.md)]

[!INCLUDE [adfs-deploy](includes/adfs-deploy.md)]

## Review to validate the AD FS and Active Directory configuration

Before you continue with the deployment, validate your deployment progress by reviewing the following items:

> [!div class="checklist"]
>
> - Record the information about the AD FS certificate, and set a renewal reminder at least six weeks before it expires. Relevant information includes: certificate serial number, thumbprint, common name, subject alternate name, name of the physical host server, the issued date, the expiration date, and issuing CA vendor (if a third-party certificate)
> - Confirm you added the AD FS service account to the KeyAdmins group
> - Confirm you enabled the Device Registration service

[!INCLUDE [adfs-additional-servers](includes/adfs-additional-servers.md)]

[!INCLUDE [adfs-mfa](includes/adfs-mfa.md)]

## Review to validate the configuration

Before you continue with the deployment, validate your deployment progress by reviewing the following items:

> [!div class="checklist"]
>
> - Confirm all AD FS servers have a valid server authentication certificate. The subject of the certificate is the common name (FQDN) of the host or a wildcard name. The alternate name of the certificate contains a wildcard or the FQDN of the federation service
> - Confirm the AD FS farm has an adequate number of nodes and is properly load balanced for the anticipated load
> - Confirm you restarted the AD FS service
> - Confirm you created a DNS A Record for the federation service and the IP address used is the load-balanced IP address
> - Confirm you created and deployed the Intranet Zone settings to prevent double authentication to the federation server
> - Confirm you have deployed a MFA solution for AD FS

> [!div class="nextstepaction"]
> [Next: configure and enroll in Windows Hello for Business >](on-premises-key-trust-enroll.md)
