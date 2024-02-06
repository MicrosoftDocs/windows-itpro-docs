---
ms.date: 01/03/2024
ms.topic: include
---

> [!NOTE]
> Inclusion of the *KDC Authentication* OID in domain controller certificate is not required for Microsoft Entra hybrid joined devices. The OID is required for enabling authentication with Windows Hello for Business to on-premises resources by Microsoft Entra joined devices.

> [!IMPORTANT]
> For Microsoft Entra joined devices to authenticate to on-premises resources, ensure to:
>
> - Install the root CA certificate in the device's trusted root certificate store. See [how to deploy a trusted certificate profile](/mem/intune/protect/certificates-trusted-root#to-create-a-trusted-certificate-profile) via Intune
> - Publish your certificate revocation list to a location that is available to Microsoft Entra joined devices, such as a web-based URL
