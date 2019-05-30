---
title: Certificates (Windows 10)
description: This section describes the Certificates settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/06/2017
ms.reviewer: 
manager: dansimp
---

# Certificates (Windows Configuration Designer reference)

Use to deploy Root Certificate Authority (CA) certificates to devices. The following list describes the purpose of each setting group.

- In [CACertificates](#cacertificates), you specify a certificate that will be added to the Intermediate CA store on the target device.
- In [ClientCertificates](#clientcertificates), you specify a certificate that will be added to the Personal store on the target device, and provide (password, keylocation), (and configure whether the certificate can be exported).
- In [RootCertificates](#rootcertificates), you specify a certificate that will be added to the Trusted Root CA store on the target device.
- In [TrustedPeopleCertificates](#trustedpeoplecertificates), you specify a certificate that will be added to the Trusted People store on the target device.
- In [TrustedProvisioners](#trustedprovisioners), you specify a certificate which allows devices to automatically trust packages from the specified publisher.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All setting groups | X |  X | X | X | X |


## CACertificates

1. In **Available customizations**, select **CACertificates**, enter a friendly name for the certificate, and then click **Add**.
2. In **Available customizations**, select the name that you just created. 
3. In **CertificatePath**, browse to or enter the path to the certificate.


## ClientCertificates

1. In **Available customizations**, select **ClientCertificates**, enter a friendly name for the certificate, and then click **Add**.
2. In **Available customizations**, select the name that you just created. The following table describes the settings you can configure. Settings in **bold** are required.

| Setting | Value | Description | 
| --- | --- | ---- | 
| **CertificatePassword** | |  |
| **CertificatePath** |  | Adds the selected certificate to the Personal store on the target device. |
| ExportCertificate | True or false | Set to **True** to allow certificate export.  |
| **KeyLocation** | - TPM only</br>- TPM with software fallback</br>- Software only  |  |

## RootCertificates

1. In **Available customizations**, select **RootCertificates**, enter a friendly name for the certificate, and then click **Add**.
2. In **Available customizations**, select the name that you just created. 
3. In **CertificatePath**, browse to or enter the path to the certificate.

## TrustedPeopleCertificates

1. In **Available customizations**, select **TrustedPeopleCertificates**, enter a friendly name for the certificate, and then click **Add**.
2. In **Available customizations**, select the name that you just created. 
3. In **TrustedCertificate**, browse to or enter the path to the certificate.


## TrustedProvisioners

1. In **Available customizations**, select **TrustedPprovisioners**, enter a CertificateHash, and then click **Add**.
2. In **Available customizations**, select the name that you just created. 
3. In **TrustedProvisioner**, browse to or enter the path to the certificate.

## Related topics


- [RootCATrustedCertficates configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/rootcacertificates-csp)
